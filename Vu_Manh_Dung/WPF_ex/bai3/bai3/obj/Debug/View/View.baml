   M S B A M L   `   `   `  ����?  ;bai3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:bai3.View	bai3.View  5      /clr-namespace:bai3.ViewModelbai3.ViewModel  5          bai3.View.View   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:bai3.View     5      2	viewmodelclr-namespace:bai3.ViewModel     5        � 	Resources  5      *  $System.Windows.Controls.DataGridCell �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value   bai3.ViewModel.Convert1   	convert11��%�   '        &	  �     �� 5   
   "  6    5      P� 5       �@J�IsMouseOver . . �5      ��  � ��
 �����6G   5      5        5   
   6   5      .��5      � $	��450��6   $��Bottom=�6    � RowDefinitions 5   
   �� 5       � ColumnDefinitions 5   
   �� 5      $	��37* �6   �� 5      $
��144* �6   �� 5      $
��123* �6   �� 5      $
��320* �6   �� 5      $
��133* �6   �� 5      $	��43* �6   .+�5!   
   &   System.Windows.Controls.DataGrid  -   5        	  Name$
	 dtg1��5!      
   CanUserAddRows
 .  $��33,0,27,112q�6\   $��4��6q   $��1��6�   $	��226��6�   $��Bottom=�6�   ��6!   �� *DataDisplay+6�   �� 5"   
   -   5         ��Name$ 	btnimport��5"      $��Import��6F   $��36,348,20,54q�6W   $��1��6m   ��6$   �� *ImportCommand+6m   �� 5#   
   $��Export��6   $��21,348,8,54q�6D   $��2��6Y   ��6"   �� *ExportCommand+6Y   �� 5$   
   $��36,63,111,365q�6V   $��1��6m   $��2��6}    �� SelectedIndex 6   �� *Index+��63   �� *
SheetNames+6}   �� 5%   
   $��Close��6   $��17,348,27,54q�6B   $��4��6X   ��6!   �� *CloseCommand+6X   �� 5&   
   $��30,61,8,365q�6U   $��2��6j   ��6   �� *DataDisplay+ �� 	Converter# [  6j   5'      5(      