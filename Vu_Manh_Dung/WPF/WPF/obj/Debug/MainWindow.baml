   M S B A M L   `   `   `  ����>  :WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPF.ViewModelWPF.ViewModel  5   	   clr-namespace:WPFWPF  5   	       WPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1	viewmodelclr-namespace:WPF.ViewModel     5   	   #localclr-namespace:WPF     5   	   -   5        $��
mainwindow��5        � Title$  
MainWindow��5	   	   $	��500��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � 	Resources 5
      !   WPF.ViewModel.MainViewModel   	ViewModel �� 
TargetType �� Property �� Value  	cellStyle*  $System.Windows.Controls.DataGridCell �� Triggers P� Property P� Value��%�  &	        '��      '�� �     &	 �       5   
   6"   �� 5   
   " ��6   .�5      ��  � ��$	 150��6&   �� 5       � ��$
 10 2q�6'   �� 5       � ��$
 Left=�64   5      �� 5   
   " ��6   .�5      ��  �@��Padding$ 10 0 0 0q�6(   5      �� 5   
   "  6"    5      P� 5       �@J�IsMouseOver . . �5      ��  � ��
 ��� �63   5      5      5      .��5      � 	 � DataContext	 6   �� 
 �� Source#
 [   � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5!   
   �  5"      �� 5#      $
��auto �6    �� 5$      $
��auto �6    �� 5%      $
��auto �6    �� 5&      $
��auto �6    �� 5'      $
��auto �6    �� 5(      $
��auto �6    �� 5)      $��10 �6     � ColumnDefinitions 5+      �� 5,      $
��auto �6#   �� 5-      $��* �6#   .+�5/      �� $��0��6   $
��Name��6%   �� 50      -   5         ��Name$ txtName��50      $��0��6'   $��1��64   ��51      �� *Person.Name+�� 52      $��1��6   $	��Age��6%   �� 53      -   5        $ txtAge��53      $��1��6&   $��1��63   ��54      �� *
Person.Age+�� 55      $��2��6   $��Address��6%   �� 56      -   5        $ 
txtAddress��56      $��2��6*   $��1��67   ��57      �� *Person.Address+�� 58      $��3��6   $��Taxcoe��6%   �� 59      -   5        $ 	txtTaxcoe��59      $��3��6)   $��1��66   ��5:      �� *Person.Taxcoe+�� 5;       �� Orientation$ 
Horizontal=�6   $��4��62   $��1��6?   .+�5<      �� $��4��6   $��1��6&   $��50��5=      $
��Left=�6$   $��10 2 5 2q�6?   $	��Add��6Q   ��5>      �� *
AddCommand+�� 5?      $��4��6   $��1��6&   $��50��66   $
��Left=�6A   $	��5 2q�6\   $��Detail��6i   ��5@      �� *DetailCommand+�� 5A      $��4��6   $��1��6&   $��50��66   $
��Left=�6A   $	��5 2q�6\   $��Update��6i   ��5B      �� *UpdateCommand+�� 5C      $��4��6   $��1��6&   $��50��66   $
��Left=�6A   $	��5 2q�6\   $��Delete��6i   ��5D      �� *DeleteCommand+�� 5E      $��4��6   $��1��6&   $��50��66   $
��Left=�6A   $	��5 2q�6\   $��Clear��6i   ��5F      �� *ClearCommand+�� 5G      -   5        $��	btnCancel��5G   z   $��4��6   $��1��6&   $��50��66   $
��Left=�6A   $	��5 2q�6\   $��Cancel��6i   ��5H      �� *CancelCommand+��5I      ��  �� ElementName$ 
mainwindow��5J      5M      �� 5N      $��5��6   $��1��6$   $	��150��64   $
��Left=�6@    �� SelectedIndex$ 0��5P      ��5O      �� *
NamePerson+5Q      5R      &   System.Windows.Controls.DataGrid  5S   
   -   5          Name$ dataGrid��5S      $��1��6%      	CellStyle# [ 5V      ��5T      �� *	Persons+ �� SelectedItem 5U      �� *Person+ �� Mode$ TwoWay=�5W      5X      5Y      