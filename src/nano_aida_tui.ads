-- SPDX-License-Identifier: AGPL-3.0-or-later
-- SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
--
-- nano_aida_tui.ads - TUI Package Specification with SPARK annotations
--
-- This package provides a formally verified TUI interface using
-- Terminal_Interface.Curses (ncurses Ada binding).

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Nano_Aida_TUI with
   SPARK_Mode => On
is
   --  Application title displayed in the TUI
   App_Title : constant String := "nano-aida TUI";

   --  Application version
   App_Version : constant String := "0.2.0";

   --  Maximum screen dimensions we support
   Max_Lines   : constant := 256;
   Max_Columns : constant := 512;

   --  Screen dimension types with range constraints for SPARK
   subtype Line_Count is Natural range 0 .. Max_Lines;
   subtype Column_Count is Natural range 0 .. Max_Columns;

   --  TUI State
   type TUI_State is (Uninitialized, Running, Stopped);

   --  Current state of the TUI
   Current_State : TUI_State := Uninitialized
     with Part_Of => TUI_Internal_State;

   --  Abstract state for SPARK
   TUI_Internal_State : TUI_State
     with Ghost;

   --  Initialize the TUI
   --  Pre: TUI must be uninitialized
   --  Post: TUI is running or stopped (on error)
   procedure Initialize
     with Global => (In_Out => TUI_Internal_State),
          Pre    => Current_State = Uninitialized,
          Post   => Current_State in Running | Stopped;

   --  Run the main TUI loop
   --  Pre: TUI must be initialized and running
   --  Post: TUI is stopped
   procedure Run
     with Global => (In_Out => TUI_Internal_State),
          Pre    => Current_State = Running,
          Post   => Current_State = Stopped;

   --  Finalize and clean up the TUI
   --  Pre: TUI must not be uninitialized
   --  Post: TUI is stopped
   procedure Finalize
     with Global => (In_Out => TUI_Internal_State),
          Pre    => Current_State /= Uninitialized,
          Post   => Current_State = Stopped;

   --  Display a message at the specified position
   --  This is a helper procedure for testing
   procedure Display_Message
     (Line   : Line_Count;
      Column : Column_Count;
      Msg    : String)
     with Global => (In_Out => TUI_Internal_State),
          Pre    => Current_State = Running;

   --  Run in test mode (non-interactive)
   procedure Run_Test_Mode
     with Global => (In_Out => TUI_Internal_State),
          Pre    => Current_State = Uninitialized,
          Post   => Current_State = Stopped;

private
   --  Screen dimensions (set during Initialize)
   Screen_Lines   : Line_Count := 0;
   Screen_Columns : Column_Count := 0;

end Nano_Aida_TUI;
