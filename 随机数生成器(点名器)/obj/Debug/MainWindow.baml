   M S B A M L   `   `   `  ����X  T随机数生成器(点名器), Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:随机数生成器_点名器_随机数生成器_点名器_  5   	   .    (随机数生成器_点名器_.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:随机数生成器_点名器_     5   	   -   5          � Title$  Random Numbers Generator��5   	   $	��312��6*   $	��407��67   $	��407��6C   $	��312��6R    � Icon$ Icon.png��6y   .��5	      �  � RowDefinitions 5
   
   �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $
��Left=�6   $��30��6/   $��	10,10,0,0q�6;   $
��Wrap=�6N   $��Random Numbers Generator��6b   $	��Top=�6�   $	��381��6�   $��24(�6�   $��2��6�   �� 5   
   -   5         ��Name$
 Seed��5      $��9,65,131.8,162.4q�6     �� TextWrapping$
 Wrap=�6:   $��36(�6N   $��2��6\   �� 5   
   -   5         ��Name$ GenerateBySeedButton��5      $��Generate by seed��6/   $��9,0,5,107.4q�6J   $��50��6t   $��Bottom=�6�   �� 5   
   -   5        $ RadomNumberButton��5      $��A random number��6,   $��50��6F   $��3,0,16.8,107.4q�6R   $��Bottom=�6j   $��1��6�   �� 5   
   $
��Left=�6   $��15��6/   $��9,45,0,0q�6;   $
��Wrap=�6M   $��Seed(Anything is OK)��6a   $	��Top=�6}   $	��260��6�   $��2��6�   �� 5   
   -   5         ��Name$ Result��5      $
��Left=�6$   $��55��6?   $��10,0,0,37.4q�6K   $
��Wrap=�6`   $��Result��6t   $��Bottom=�6�   $	��374��6�   $��36(�6�   $��2��6�   �� 5   
   -   5        $ Range��5      $��0,65,17.8,162.4q�6!   $
 Wrap=�6:   $��36(�6N   $�� ��6\   $��1��6d   $��Right=�6t   $	��109��6�   �� 5   
   $��Right=�6   $��15��60   $��0,45,17.8,0q�6<   $
��Wrap=�6Q   $��Range(A number)��6e   $	��Top=�6|   $	��109��6�   $��1��6�   �� 5   
   
�������$��1q�6$   $��10,0,15.8,37.4q�68   $��2��6P   $��65��6d   $��Bottom=�6p   �� 5   
   -   5        $ SettingsButton��5      $	��⚙��6)   $��1��65   $��Right=�6E   $��0,0,15.8,10.4q�6a   $��22��6x   $��22��6�   $��Bottom=�6�   ��6�   Z� ��6�   Z� 6�   �� 5   
   -   5         ��Name$ 
IsOnTheTop��5      $��
On the Top��6'   $
��Left=�6<   $��10,0,0,10.4q�6W   $	��115��6l   $��22��6�   $��Bottom=�6�   5      5      