   M S B A M L   `   `   `  ����C  ?WordExel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WordExelWordExel  5   	       WordExel.Word   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:WordExel     5   	   _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$
  Word��5	   	   $	��800��6   $	��800��6#   ���	#FF313E50 � WindowState$ 	Maximized=�6F   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   `�  `� 
Background
 �����.�5      c� 
�������.@�5      �� $��ApplicationCommands.Cut��6   ��6;   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 
ContentCut=��� 5      $��ApplicationCommands.Copy��6   ��6<     $ ContentCopy=��� 5      $��ApplicationCommands.Paste��6   ��6=     $ ContentPaste=��� 5      �� 5      $��ApplicationCommands.Undo��6   ��6<     $
 Undo=��� 5      $��ApplicationCommands.Redo��6   ��6<     $
 Redo=��� 5      �� 5      $ ��EditingCommands.ToggleBold��6   ��6>     $ 
FormatBold=��� 5      $"��EditingCommands.ToggleItalic��6   ��6@     $ FormatItalic=��� 5      $%��EditingCommands.ToggleUnderline��6   ��6C     $ FormatUnderline=��� 5      �� 5      $&�� EditingCommands.IncreaseFontSize��6   $��А🠕��6D   $��15(�6R   �� 5      $&�� EditingCommands.DecreaseFontSize��6   $��А🠗��6D   $��15(�6R   �� 5      �� 5       $��EditingCommands.AlignLeft��6   ��6=     $ FormatAlignLeft=��� 5!      $!��EditingCommands.AlignCenter��6   ��6?     $ FormatAlignCenter=��� 5"      $ ��EditingCommands.AlignRight��6   ��6>     $ FormatAlignRight=��� 5#      $"��EditingCommands.AlignJustify��6   ��6@     $ FormatAlignJustify=��� 5$      �� 5%      $)��#EditingCommands.IncreaseIndentation��6   ��6G     $ FormatIndentIncrease=��� 5&      $)��#EditingCommands.DecreaseIndentation��6   ��6G     $ FormatIndentDecrease=�5'      5(      �� 5)   
   -   5        $��MyRtb��5)   s   
������� �� 
AcceptsTab . $��1��6;   $	��Top=�6H   $	��750��6g    � 	Resources 5*       �� 
TargetType �� Property	 �� Value��%X   'J�       �� 5+      " J�6   .�5,      ��  �@��Margin$	 0q�6/   5-      5.      5/      � 50   
   $��2��6   
 � ColumnDefinitions
 51      �� 52      �� 53      .+�55      �� -   5        $��Сохранить��55      6)   �� 56      -   5        $��1��56      $��Загрузить��6%   69   57      58      59      