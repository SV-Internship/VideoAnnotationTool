   M S B A M L   `   `   `  ����H  DRomanticLabel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:RomanticLabel.ViewModelRomanticLabel.ViewModel  5   	   #    RomanticLabel.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:RomanticLabel.ViewModel     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   -   5          �Name$  MediaService��5	   	   $	��450��5
      $	��800��6'    � 
ResizeMode$ NoResize=�63    � WindowStartupLocation$ CenterScreen=�6I    � WindowStyle$
 None=�6n    J� InputBindings 5      �� 5   
   
 �� Key$ O��6    �� Command 6   �� *
FindPath+�� 5   
   $ W��6    6   �� *NextFrameCommand+�� 5   
   $ Q��6    6   �� *PrevFrameCommand+�� 5   
   $	 Esc��6    6   �� *CloseWindow+.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedCommand+   CommandParameter 6F   ��  �� ElementName$ MediaService��5       � DataContext 5      +   %RomanticLabel.ViewModel.MainViewModel  5   
    � 	Resources 5         	CloseMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  OpenMenu��%\  &	        &	 �    �� 5   
   .��5      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMenu��6�   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 0Q�69   5      U� 5      $ (UIElement.Opacity)�6,   $ GridBackground��6\   .\�5         $ 0��6'   $ 1Q�63     5!      $ 0:0:0.5��6'   $ 0Q�69   5"      5#      �� 5$   
   .��5%      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMenu��6�   .\�5&        $ 0��6'   $ 0Q�63     5'      $ 0:0:0.5��6'   $	 200Q�69   5(      U� 5)      $ (UIElement.Opacity)�6,   $ GridBackground��6\   .\�5*        $ 0��6'   $ 0Q�63     5+      $ 0:0:0.5��6'   $ 1Q�69   5,      5-      5.       � Triggers 5/      :� 50   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonClose��66   .[�51      �� -   5         ��Name$ CloseMenu_BeginStoryboard��51      #��[  6A   52      :� 53   
   $ ButtonBase.Click��6   $ 
ButtonOpen��66   .[�54      �� #��[ 6   55      .��58      � -   5         �Name$
 grid��58       59   
   .   (RomanticLabel.ViewModel.DataContextProxy 	 Proxy   DataContext��%+   &	         5:       6%   �� 6=   5;      .+�5<   
   � -   5        $ GridBackground��5<      ���	#55313131 J� Opacity$ 0Q�6>   �� 5=   
   $	��800��6   $	��450��6    5?        5@      $ MouseLeftButtonDown��6!   .	 5A        
 6,   �� *DrawGhostRect+5B        5C      $ MouseLeftButtonUp��6!   .	 5D        
 6,   �� *DrawGhostRect+5E      .+�5H      �� 	 �� X2$	 800��6)   
��� ���	 �� Y1 6   �� *PanelY+	 �� Y2 62   �� *PanelY+��6X   �� *CrossHairThickness+�� 5I      $ 0��6)   $	 450��6F   
��� ���	 �� X1 6   �� *PanelX+ 60   �� *PanelX+��6_   �� *CrossHairThickness+�� 5K      ��6   �� *BoundingBoxes+ 5L      )   #RomanticLabel.ViewModel.ResizeThumb �� 
TargetType �� Property  �� Value��%�   '        �� 5M      "  6   .�5N      ��  � ��  5O      �� 5P   "   .R�5Q   &   �� $��2q�6W   ��6-   �� *DataContext.Color+6W   5R   #   5T      5U      5V      ��5W      �� 5X      .R�5Y      �� 5Z      ��5\      �� 5]      .R�5^      �� ._�5_      � 
! � Tag! 6#   �� " � ContextMenu" 5`   "   �� 5a   &   .@�5b   *   m� # m� Command# 63   �� *&$DataContext.DeleteBoundingBoxCommand+$ �� Source#$ [ % m� CommandParameter% 5c   ;   �� *PlacementTarget.Tag+& �� RelativeSource& �� ' �� AncestorType' ContextMenu��5d   .   �� 5e   2   $��Delete��6<   5g   +   m� 5h   *   # 63   �� *" DataContext.InterpolationCommand+#$ [ % 5i   ;   �� *PlacementTarget.Tag+& �� ' ContextMenu��5j   .   �� 5k   2   ��6<   �� *DataContext.Interpolation+#$ [ 5m   +   m� 5n   *   ��5o   .   �� 5p   2   ��6:   �� *ID+( �� Mode$( TwoWay=�5r   +   5s   '   .+�5u   "   +	   %RomanticLabel.ViewModel.BoundingThumb	  ) J� IsHitTestVisible$
) True��66   
������ * � Cursor$
* Hand��6g    5v   7   �� & �� ' ContentPresenter��5w   &   �� 5x   *   .R�5y   .   �� ._�5z   2   �� $��18(�6\   ��6<   �� *DataContext.ID+6\   5{   /   5|   +   5~   #     5   "   $��3��6�   $* SizeNS��6�   $��0 -4 0 0q�6�   $	��Top=�6�   $��Stretch=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��3��6�   $* SizeWE��6�   $��-4 0 0 0q�6�   $��Stretch=�6�   $
��Left=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��3��6�   $* SizeWE��6�   $��0 0 -4 0q�6�   $��Stretch=�6�   $��Right=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��3��6�   $* SizeNS��6�   $��0 0 0 -4q�6�   $��Bottom=�6�   $��Stretch=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��7��6�   $��7��6�   $* SizeNWSE��6�   $��	-6 -6 0 0q�6�   $	��Top=�6�   $
��Left=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��7��6�   $��7��6�   $* SizeNESW��6�   $��	0 -6 -6 0q�6�   $	��Top=�6�   $��Right=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��7��6�   $��7��6�   $* SizeNESW��6�   $��	-6 0 0 -6q�6�   $��Bottom=�6�   $
��Left=�6�    64   �� & �� ' ContentPresenter6�     5�   "   $��7��6�   $��7��6�   $* SizeNWSE��6�   $��	0 0 -6 -6q�6�   $��Bottom=�6�   $��Right=�6�    64   �� & �� ' ContentPresenter6�   5�      5�      5�      ��5�      �� 5�      " ��6   .�5�      ��  �@��Left  68   �� *X+$( TwoWay=��� 5�       �@��Top  67   �� *Y+$( TwoWay=��� 5�       � ��  63   �� *Height+$( TwoWay=��� 5�       � ��  62   �� *Width+$( TwoWay=�5�      5�      r� 5�      -   5        + r�Name$+ MediaPlayer��5�      , K� ZIndex$, -1��60   - r� LoadedBehavior$- Manual=�6_   $	��450��6w   $	��800��6�   . r� IsMuted$
. True��6�   / r� ScrubbingEnabled$
/ True��6�   0 r� Source0 6B   �� *	VideoPath+6�   �� 5�      $) False��6   
��� ���$	 0.5Q�6?   1 �� Left1 6M   �� *GhostRect.X+
2 �� Top2 6q   �� *GhostRect.Y+��6�   �� *GhostRect.Width+��6�   �� *GhostRect.Height+��5�      �� 5�      " ��6   .�5�      ��  � y�$  	Collapsed=�67   3 �� Triggers3 5�      �� 5�      4 �� Binding4 6*   �� *IsLeftMouseDown+5 �� Value5 True6N   .a�5�   "   ��  � y�$  Visible=�6?   5�      5�      5�      6   	Behaviors6 5�      ,
  &RomanticLabel.ViewModel.MouseBehaviors
  5�      7 
  MouseX7 6'   �� *PanelX+$( OneWayToSource=�8 
  MouseY8 5�   #   �� *PanelY+$( OneWayToSource=�5�      �� 5�   
   -   5        9 ��Name$9 
ButtonOpen��5�      $
��Left=�6%   $	��Top=�6@   $��30��6�   $��30��6�   $��0q�6�   ��6X   Z� ��6n   Z� .��5�      '  !MaterialDesignThemes.Wpf.PackIcon  :   Kind$
: Menu=�6&   ���	#FF31313162   5�      � 5�   
   -   5        $ GridMenu��5�      $	��200��6!   $
��Left=�6-   $��
-200 0 0 0q�6H   
�������; J� RenderTransformOrigin$; 0.5,0.5&�6o   < � RowDefinitions< 5�      �� 5�      $
��193* �6    �� 5�      $
��391* �6    z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .+�5�      �� $��2��6   .+�5�      � $	��140��6   .+�5�      �� ��6%   �� *	GaugeView+5�      )  #MaterialDesignThemes.Wpf.DialogHost  5�        MaterialDesignDivider#���  6,   =   DialogContent= 5�      � 5�      $	��300��6   $	��150��6+   $��Center=�68   .+�5�      �� > �� Orientation$> 
Horizontal=�6)   $��15q�6B   .+�5�   "     $: Folder=�6:     PrimaryHueMidBrush#��[ 6H   $��50��6y   $��50��6�   �� 5�   "   
�������$	��200��6>   $
��15 5q�6J   $
��Wrap=�6X   GEAllow Application to access photos, media and files on your computer?5�   #   5�      �� 5�      $> 
Horizontal=�6)   $��Right=�6B   $��Bottom=�6^   $��15q�6y   .+�5�   "   �� ?   CloseDialogCommand#��Z? 6)     MaterialDesignFlatButton#���  6k   $��4q�6�   $��Center=�6�   .��6�   Deny5�   #   �� 5�   "   #���  6F   $��4q�6y   $��Center=�6�   $��Allow��6�   ��6)   �� *
FindPath+ 5�   &     5�   *   $ Click��69   .	 5�   .     #
 Z? 6D   5�   +   5�   #   5�      5�      .��5�      � .+�5�      �� .+�5�      �� #��[ 6%   @   OpenDialogCommand#��Z@ 6W   .��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: Video=�6>   $��20��6K   $��20��6V   $��Center=�6b   �� 5�   &   $��
Open Video��60   $
��20 0q�6B   $��15(�6P   $��Center=�6^   5�   #   5�      �� 5�      #��[ 6%   ��6W   �� *CancelInterpolation+.��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: BoxVariantClosed=�6>   $��20��6V   $��20��6a   $��Center=�6m   �� 5�   &   $��Interpolation Cancel��60   $
��10 0q�6L   $��15(�6Z   $��Center=�6h   5�   #   5�      �� 5�      #��[ 6%   ��6W   �� *ObjectDetect+.��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: BoxSearchOutline=�6>   $��20��6V   $��20��6a   $��Center=�6m   �� 5�   &   $��Object Detecting��60   $
��15 0q�6H   $��15(�6V   $��Center=�6d   5�   #   5�      �� 5�      #��[ 6%   $�� ��6W   .��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: Settings=�6>   $��20��6N   $��20��6Y   $��Center=�6e   �� 5�   &   $��Setting��60   $
��20 0q�6?   $��15(�6M   $��Center=�6[   5�   #   5�      �� 5�      #��[ 6%   $�� ��6W   .��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $
: Help=�6>   $��20��6J   $��20��6U   $��Center=�6a   �� 5�   &   $��ShortCut��60   $
��20 0q�6@   $��15(�6N   $��Center=�6\   5�   #   5�      �� 5�      #��[ 6%   ��6W   �� *
SaveBBox+.��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: Folder=�6>   $��20��6L   $��20��6W   $��Center=�6c   �� 5�   &   $��	Save BBox��60   $
��20 0q�6A   $��15(�6O   $��Center=�6]   5�   #   5�      �� 5�      #��[ 6%   ��6W   �� *CloseWindow+.��5�   "   �� $> 
Horizontal=�6-   $��28��6F   .+�5�   &     $: Close=�6>   $��20��6K   $��20��6V   $��Center=�6b   �� 5�   &   $��Program Exit��60   $
��20 0q�6D   $��15(�6R   $��Center=�6`   5�   #   5�      5      5     5     5     �� 5     -   5        $9 ButtonClose��5     $��Right=�6*   $	��Top=�6F   $��30��6�   $��30��6�   $��0q�6�   ��6^   Z� ��6t   Z� .��5       $: Close=�6*   5     5     5     5	     