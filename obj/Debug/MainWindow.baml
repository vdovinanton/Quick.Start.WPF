   M S B A M L   `   `   `  ����  AlarmSender    AlarmSender.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.0.0.638, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�6   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $��* �6   �� 5      $��0 �6   �� 5      $��* �6   �� 5      $��0 �6   �� 5      $��* �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��0 �6   �� 5      $��* �6   �� 5      $��30 �6   �� 5      $��20 �6    � ColumnDefinitions 5!   
   �� 5"      $��20 �6   �� 5#      $
��Auto �6   �� 5$      $��10 �6   �� 5%      $��* �6   �� 5&      $��30 �6   �� 5'      $��30 �6   �� 5(      $��30 �6   .+�5+   
   '  !MaterialDesignThemes.Wpf.PackIcon  -   5        $��MinimizeIcon��5+   ?   $��0��6"   $��5��6/   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.0.0.638, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6S   $��Center=�6i   $��25��6�   $��25��6�   �� 5,   
   -   5        $��MinimizeIconBorder��5,   1   $��0��6   $��5��6!   
������ $��Center=�6_   $��25��6z   $��25��6�     5-   
   -   5        $��	CloseIcon��5-   ?   $��0��6"   $��6��6/   $ Close=�6P   $��Center=�6]   $��25��6x   $��25��6�   �� 5.   
   -   5        $��CloseIconBorder��5.   1   $��0��6   $��6��6!   
������ $��Center=�6\   $��25��6w   $��25��6�   50      51      