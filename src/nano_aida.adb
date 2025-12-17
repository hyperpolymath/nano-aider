-- SPDX-License-Identifier: AGPL-3.0-or-later
-- SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
--
-- nano_aida.adb - Main entry point for nano-aida TUI application
--
-- This is an Ada/SPARK TUI application demonstrating formal verification
-- techniques applied to terminal user interfaces.

with Ada.Command_Line;
with Ada.Text_IO;
with Nano_Aida_TUI;

procedure Nano_Aida is
   use Ada.Command_Line;
   use Ada.Text_IO;

   Test_Mode : Boolean := False;
begin
   --  Parse command line arguments
   for I in 1 .. Argument_Count loop
      if Argument (I) = "--test" or Argument (I) = "-t" then
         Test_Mode := True;
      elsif Argument (I) = "--version" or Argument (I) = "-v" then
         Put_Line ("nano-aida v" & Nano_Aida_TUI.App_Version);
         Put_Line ("Ada/SPARK TUI with formal verification");
         Put_Line ("License: AGPL-3.0-or-later");
         return;
      elsif Argument (I) = "--help" or Argument (I) = "-h" then
         Put_Line ("nano-aida - Ada/SPARK TUI application");
         Put_Line ("");
         Put_Line ("Usage: nano_aida [OPTIONS]");
         Put_Line ("");
         Put_Line ("Options:");
         Put_Line ("  -h, --help     Show this help message");
         Put_Line ("  -v, --version  Show version information");
         Put_Line ("  -t, --test     Run in test mode (non-interactive)");
         return;
      end if;
   end loop;

   if Test_Mode then
      --  Run non-interactive test
      Nano_Aida_TUI.Run_Test_Mode;
   else
      --  Run interactive TUI
      Nano_Aida_TUI.Initialize;
      if Nano_Aida_TUI.Current_State = Nano_Aida_TUI.Running then
         Nano_Aida_TUI.Run;
      end if;
      Nano_Aida_TUI.Finalize;
   end if;

exception
   when others =>
      Put_Line (Standard_Error, "Error: TUI initialization failed");
      Nano_Aida_TUI.Finalize;
end Nano_Aida;
