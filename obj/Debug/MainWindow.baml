   M S B A M L   `   `   `  ����E  ATextEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:TextEditor
TextEditor  5   	       TextEditor.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:TextEditor     5   	     � Title$  Text Editor��5   	   $	��600��6   $	��800��6*    J� InputBindings 5	      �� 5
   
   
 �� Key$ S��6    �� 	Modifiers$ 	Shift+Altf�6    �� Command$  ApplicationCommands.SaveAs��63    J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Print��5      6=     5   
   -   5        $ ApplicationCommands.New��5      6<     5   
   -   5        $ ApplicationCommands.Open��5      6<     5   
   -   5        $ ApplicationCommands.Save��5      6T     5   
   -   5        $  ApplicationCommands.SaveAs��5      6>     5   
   -   5        $ ApplicationCommands.Close��5      6=     5   
   -   5        $&  ApplicationCommands.PrintPreview��5      6D   .��5      ]� .+�5   
      TextEditor.TextEditorMenu  -   5          Name$
 menu��5      $	��Top=�6-   "   TextEditor.TextEditorToolBar  5   
   -	   5          Name$ toolbar��5   "   $	��Top=�63   6I   �� 5      $��Bottom=�6   .@�5      �� -
   5        	 ��Name$	 status��5      5      �� 5   
   -   5        
 ��Name$

 body��5       �� 	IsEnabled .  �� 
AcceptsTab . $��0 2 0 0q�6|   5      5      