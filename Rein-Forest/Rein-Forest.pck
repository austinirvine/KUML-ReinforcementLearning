GDPC                                                                             $   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex n      �      �Q!����|M�   res://Book.gd.remap ��             �#�5C���v)�f   res://Book.gdc  �      1      $ �R-	����'oxg�A   res://Book.tscn �	      @      ����� �;�u��o�   res://BookSpawn.gd.remap �      $       ��"?��ϫ-N,8��   res://BookSpawn.gdc 0      �      /%K����3��2�*   res://BookSpawn.tscn�      �      ��s�Mb�u2�Z̒��$   res://Characters/Camera2D.gd.remap  0�      .       |��%(�������	�jW    res://Characters/Camera2D.gdc   �      �       ���-{Q��A��<�   res://Characters/bully.tscn �      �      �?"I��d��/a1?��   res://Characters/person.tscn�            ��@�u����g����   res://Desk.gd.remap `�             �7:�����g���$   res://Desk.gdc        3      /9�1~ĩ�ظ�d��   res://Game.gd.remap ��             b3`���ƀ��YPM>   res://Game.gdc  P      �      >㴁���ܷ��)�q   res://Game.tscn       �      z0+����-�?>�^{�   res://GameRL.tscn   �/            �t�I�um�&�C}쪻1   res://ReinfLearn.gd.remap   ��      %       �H�!ޕ�ot?,���   res://ReinfLearn.gdc�E      �      =0�V���;߮�W��'   res://Spawn.gd.remapВ              �M��t
�Y|Z�[���   res://Spawn.gdc �N            RǈX��#o�X���L��   res://Spawn.tscnPR      �      ߘD��/��6�����   res://Title Screen.gd.remap �      '       ���Wh���������2   res://Title Screen.gdc  U            E�Z��DO^�!�)   res://Title Screen.tscn 0W      �      ��`gf=����Y y�    res://assets/Material.material  _      B      ui�M�D�q�N�rg�_   res://bully.gd.remap �              o!�S0$UI�V�Qk%��   res://bully.gdc `g      �      "�5J���#�[4=   res://default_env.tres  0l      �      �Y^%-�,^�͍6�   res://icon.png  p�      �      �~dg`!����I�҃   res://icon.png.import   �{      �      �����%��(#AB�   res://libraryDesk.tscn  P~      Y      ���B�cTס$��ÿ   res://person.gd.remap   @�      !       �����ZFw�X( s   res://person.gdc��      g
      �ʣ֍b�<G�n(׿�   res://project.binary �      U      ��t@iK�ᤘ��dq3$   res://scenes/environment/block.tscn  �      �      �����(��v?K�ְ@    GDSC            &      ���ׄ�   ��������������������Ҷ��   ���϶���   ���Ӷ���   �������ݶ���   ���������¶�   ������ض   ���������Ӷ�      Player                     
                         $      3YY0�  P�  QV�  &�  T�  V�  �  T�  PQ�  �  PQT�  PQ�  �  PQY`               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Book.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]

[node name="Book" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.453125, 0.281309, 0.143372, 1 )
scale = Vector2( 0.5, 0.5 )
texture = ExtResource( 2 )
[connection signal="body_entered" from="." to="." method="_on_Book_body_entered"]
GDSC   
         >      ���ӄ�   ���ݶ���   �����϶�   ����������������¶��   ����϶��   �������Ӷ���   ��������Ҷ��   ������ض   ����Ķ��   ����¶��      res://Book.tscn                                                     	      
   (      /      0      6      3YY:�  ?PQYY0�  PQV�  �  PQ�  -YY0�  PQV�  ;�  �  T�  PQ�  T�  P�  QYY0�  PQV�  W�  T�	  PQ`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://BookSpawn.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]

[node name="Book Spawn" type="Node2D"]
script = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 2.0
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
         GDSC                  �����ׄ򶶶�   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���      Title Screen.tscn                            
            3YYY0�  PQV�  �  PQT�  PQY`               [gd_scene load_steps=4 format=2]

[ext_resource path="res://bully.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Bully" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 1, 0, 0, 1 )
self_modulate = Color( 1, 0, 0, 1 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -4.76837e-07, -4.29153e-06 )
scale = Vector2( 3.07692, 3.07692 )
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 10.0
one_shot = true
autostart = true
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[gd_scene load_steps=5 format=2]

[ext_resource path="res://person.gd" type="Script" id=1]
[ext_resource path="res://Characters/Camera2D.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -4.76837e-07, -4.29153e-06 )
scale = Vector2( 3.07692, 3.07692 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 1, 0.84375, 0, 1 )
self_modulate = Color( 1, 0.867188, 0, 1 )
texture = ExtResource( 3 )

[node name="Timer" type="Timer" parent="."]
one_shot = true
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
 GDSC         	   &      ���ׄ�   ��������������������Ҷ��   ���϶���   ���Ӷ���   ����������Ŷ   ����Ҷ��      Player     	   Good Game                      
                        #      $   	   3YY0�  P�  QV�  &�  T�  V�  �8  P�  Q�  �  T�  PQ�  �  T�  PQ�  Y`             GDSC            3      ���Ӷ���   ������������ݶ��   �����϶�   ����Ӷ��   �������Ŷ���   ����׶��   #   res://scenes/environment/block.tscn                                                     	      
                                        !      "      #      %      &      -      .      /      1      3YYYYY;�  ?PQYY0�  PQV�  ;�  �  �  YYYYYYY�  -YY0�  P�  QV�  �  �  -Y`         [gd_scene load_steps=6 format=2]

[ext_resource path="res://Game.gd" type="Script" id=1]
[ext_resource path="res://scenes/environment/block.tscn" type="PackedScene" id=2]
[ext_resource path="res://BookSpawn.tscn" type="PackedScene" id=3]
[ext_resource path="res://libraryDesk.tscn" type="PackedScene" id=4]
[ext_resource path="res://Spawn.tscn" type="PackedScene" id=5]

[node name="Node" type="Node"]
script = ExtResource( 1 )

[node name="Env" type="Node" parent="."]
editor/display_folded = true

[node name="Node2D" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 2, 582 )

[node name="Node2D35" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1264, 584 )

[node name="Node2D39" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1264, 284 )

[node name="Node2D23" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 400 )

[node name="Node2D34" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 402 )

[node name="Node2D43" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 102 )

[node name="Node2D25" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 340 )

[node name="Node2D36" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 342 )

[node name="Node2D42" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 42 )

[node name="Node2D22" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 520 )

[node name="Node2D37" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 522 )

[node name="Node2D41" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 222 )

[node name="Node2D24" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 460 )

[node name="Node2D38" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 462 )

[node name="Node2D40" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 162 )

[node name="Node2D13" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 422, 582 )

[node name="Node2D21" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 842, 582 )

[node name="Node2D2" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 62, 582 )

[node name="Node2D12" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 482, 582 )

[node name="Node2D29" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 362, 432 )

[node name="Node2D30" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 672, 302 )

[node name="Node2D18" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 902, 582 )

[node name="Node2D3" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 122, 582 )

[node name="Node2D10" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 542, 582 )

[node name="Node2D28" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 422, 432 )

[node name="Node2D32" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 732, 302 )

[node name="Node2D20" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 960, 581 )
scale = Vector2( 1, 0.96875 )

[node name="Node2D4" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 182, 582 )

[node name="Node2D8" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 602, 582 )

[node name="Node2D27" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 482, 432 )

[node name="Node2D33" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 792, 302 )

[node name="Node2D17" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1022, 582 )

[node name="Node2D5" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 242, 582 )

[node name="Node2D14" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 662, 582 )

[node name="Node2D26" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 542, 432 )

[node name="Node2D31" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 852, 302 )

[node name="Node2D15" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1082, 582 )

[node name="Node2D6" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 302, 582 )

[node name="Node2D11" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 722, 582 )

[node name="Node2D16" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1142, 584 )

[node name="Node2D7" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 362, 582 )

[node name="Node2D9" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 782, 582 )

[node name="Node2D19" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1200, 584 )

[node name="books" type="Node" parent="."]

[node name="Book Spawn" parent="books" instance=ExtResource( 3 )]
position = Vector2( 376.26, 373.636 )

[node name="Book Spawn5" parent="books" instance=ExtResource( 3 )]
position = Vector2( 687.736, 243.972 )

[node name="Book Spawn2" parent="books" instance=ExtResource( 3 )]
position = Vector2( 450.958, 372.227 )

[node name="Book Spawn4" parent="books" instance=ExtResource( 3 )]
position = Vector2( 763.843, 243.972 )

[node name="Book Spawn3" parent="books" instance=ExtResource( 3 )]
position = Vector2( 527.065, 373.636 )

[node name="Book Spawn6" parent="books" instance=ExtResource( 3 )]
position = Vector2( 838.541, 243.972 )

[node name="Desk" parent="." instance=ExtResource( 4 )]
position = Vector2( 1200, 480 )

[node name="player spawn" parent="." instance=ExtResource( 5 )]
position = Vector2( 130, 490 )

[node name="enemy spawn" parent="." instance=ExtResource( 5 )]
position = Vector2( 1060, 510 )
        [gd_scene load_steps=7 format=2]

[ext_resource path="res://Game.gd" type="Script" id=1]
[ext_resource path="res://scenes/environment/block.tscn" type="PackedScene" id=2]
[ext_resource path="res://BookSpawn.tscn" type="PackedScene" id=3]
[ext_resource path="res://libraryDesk.tscn" type="PackedScene" id=4]
[ext_resource path="res://Spawn.tscn" type="PackedScene" id=5]
[ext_resource path="res://ReinfLearn.gd" type="Script" id=6]

[node name="Node" type="Node"]
script = ExtResource( 1 )

[node name="Env" type="Node" parent="."]
editor/display_folded = true

[node name="Node2D" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 2, 582 )

[node name="Node2D35" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1264, 584 )

[node name="Node2D39" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1264, 284 )

[node name="Node2D23" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 400 )

[node name="Node2D34" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 402 )

[node name="Node2D43" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 102 )

[node name="Node2D25" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 340 )

[node name="Node2D36" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 342 )

[node name="Node2D42" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 42 )

[node name="Node2D22" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 520 )

[node name="Node2D37" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 522 )

[node name="Node2D41" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 222 )

[node name="Node2D24" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 0, 460 )

[node name="Node2D38" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 462 )

[node name="Node2D40" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1262, 162 )

[node name="Node2D13" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 422, 582 )

[node name="Node2D21" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 842, 582 )

[node name="Node2D2" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 62, 582 )

[node name="Node2D12" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 482, 582 )

[node name="Node2D29" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 362, 432 )

[node name="Node2D30" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 672, 302 )

[node name="Node2D18" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 902, 582 )

[node name="Node2D3" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 122, 582 )

[node name="Node2D10" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 542, 582 )

[node name="Node2D28" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 422, 432 )

[node name="Node2D32" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 732, 302 )

[node name="Node2D20" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 960, 581 )
scale = Vector2( 1, 0.96875 )

[node name="Node2D4" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 182, 582 )

[node name="Node2D8" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 602, 582 )

[node name="Node2D27" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 482, 432 )

[node name="Node2D33" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 792, 302 )

[node name="Node2D17" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1022, 582 )

[node name="Node2D5" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 242, 582 )

[node name="Node2D14" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 662, 582 )

[node name="Node2D26" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 542, 432 )

[node name="Node2D31" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 852, 302 )

[node name="Node2D15" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1082, 582 )

[node name="Node2D6" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 302, 582 )

[node name="Node2D11" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 722, 582 )

[node name="Node2D16" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1142, 584 )

[node name="Node2D7" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 362, 582 )

[node name="Node2D9" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 782, 582 )

[node name="Node2D19" parent="Env" instance=ExtResource( 2 )]
position = Vector2( 1200, 584 )

[node name="books" type="Node" parent="."]

[node name="Book Spawn" parent="books" instance=ExtResource( 3 )]
position = Vector2( 366.862, 368.782 )

[node name="Book Spawn4" parent="books" instance=ExtResource( 3 )]
position = Vector2( 675.877, 237.754 )

[node name="Book Spawn2" parent="books" instance=ExtResource( 3 )]
position = Vector2( 453.204, 368.782 )

[node name="Book Spawn6" parent="books" instance=ExtResource( 3 )]
position = Vector2( 762.219, 237.754 )

[node name="Book Spawn3" parent="books" instance=ExtResource( 3 )]
position = Vector2( 529.701, 366.51 )

[node name="Book Spawn5" parent="books" instance=ExtResource( 3 )]
position = Vector2( 838.715, 235.482 )

[node name="Desk" parent="." instance=ExtResource( 4 )]
position = Vector2( 1200, 480 )

[node name="player spawn" parent="." instance=ExtResource( 5 )]
position = Vector2( 130, 490 )

[node name="enemy spawn" parent="." instance=ExtResource( 5 )]
position = Vector2( 1060, 510 )

[node name="RL" type="Node" parent="."]
script = ExtResource( 6 )
        GDSC   '      P   �     ���Ӷ���   ��������������Ƕ   ������Ŷ   Ƕ��   ����׶��   �Ķ�   �����϶�   �����Ŷ�   ���������Ŷ�   ߶��   �����Ҷ�   �����ζ�   ��Ķ   �����ڶ�   ���Ӷ���   ����ض��   ����������Ҷ   �����������Ӷ���   �������ζ���   �����Ķ�   �������Ӷ���   ��������Ҷ��   �������������   �����������ض���   ζ��   �������������ﶶ   ϶��   ������������¶��   ���������¶�   ���������޶�   �����޶�   ��������   �����Ҷ�   �������������   �������������ﶶ   ������������¶��   ���������޶�   �������Ŷ���   ����׶��  �������?  �������?      ?                      ��       ../player spawn/   d      2                                                           	      
   !      "      #      $      %      +      0      5      6      7      8      9      :      C      J      Q      R      Y      _      l      u      x       y   !   z   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3     4     5     6     7     8   *  9   1  :   8  ;   @  <   D  =   L  >   P  ?   X  @   \  A   d  B   h  C   i  D   j  E   k  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   3YYYYY;�  Y;�  LMY;�  LMY;�  �  Y;�  �  YYYYY0�  PQV�  ;�  �  �  ;�  �  YYYYY�  )�	  �D  P�  QV�  �  T�
  P�	  Q�  �  T�
  P�  QYY0�  P�  QV�  ;�  �  �  )�	  �D  P�  T�  PQQV�  �  �-  P�	  R�  Q�  .�  YYY0�  PQV�  ;�  �!  PQ�  ;�  �  �  &P�  	�  QV�  �  �  L�   PQ�  T�  PQM�  (V�  ;�  �  �  ;�  �  �  )�	  �D  P�  QV�  &P�  L�	  M�  QV�  �  �	  �  �  �  L�	  M�  �  �  Y�  ;�  �  P�  QT�  P�  Q�  ;�  �  T�  PQT�  �  ;�  �  T�  PQT�  �  ;�  �  T�  �  ;�  �  T�  �  �  T�  P�  Q�  ;�   �  �  ;�!  �  T�  PQT�  �  ;�"  �  T�  PQT�  �  ;�#  �  T�  �  ;�$  �  T�  �  &P�!  �  QV�  �   �  �  'P�  �!  QV�  �   �  �  &P�#  �  QV�  �   �	  �  &P�$  	�  QV�  �   �	  �  �  �  �  �  L�  M�  L�  M�  P�   �  �  P�  QQ�  L�  MYYYYYY0�%  P�&  QV�  &P�  P�  QT�  P�  Q�
  QV�  �  PQYY`        GDSC            �      ���ӄ�   ���������Ӷ�   ����Ӷ��   �����Ķ�   ����϶��   �����϶�   ���Ӷ���   �����������������¶�   ����������������¶��   ������ض   �����Ķ�   ����¶��   �����϶�   �������Ӷ���   ��������Ҷ��   Ƈ��      player        res://Characters/person.tscn      res://Characters/bully.tscn       player spawn      enemy spawn                          	                           	   #   
   )      -      .      2      6      8      9      ?      F      G      M      S      \      c      e      f      g      m      s      |      �      3YY;�  YY;�  Y:�  ?P�  QY:�  ?P�  QYY0�  PQV�  �  T�  �  �  Y�  �  PQ�  �  PQ�  -YY0�	  PQV�  W�
  T�  PQYY0�  PQV�  &�  �  V�  ;�  �  T�  PQ�  �  T�  P�  Q�  -YYY0�  PQV�  &�  �  V�  ;�  �  T�  PQ�  �  T�  P�  QY` [gd_scene load_steps=3 format=2]

[ext_resource path="res://Spawn.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]

[node name="Spawn" type="Node2D"]
editor/display_folded = true
script = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]
editor/display_folded = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]
wait_time = 3.0
autostart = true

[node name="PTimer" type="Timer" parent="."]
one_shot = true
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
[connection signal="timeout" from="PTimer" to="." method="_on_PTimer_timeout"]
          GDSC            H      ���Ӷ���   �����϶�   ��������������Ķ   ������������Ķ��   �����ض�   ���������Ŷ�   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���   ���������؄�������Ҷ   ���¶���   ���������؅�������Ҷ   	   Game.tscn         GameRL.tscn                    	                              %   	   &   
   '      -      5      6      7      =      F      3YY0�  PQV�  W�  �  �  T�  PQYYY0�  PQV�  �  PQT�  PQYYY0�	  PQV�  �  PQT�
  PQYYY0�  PQV�  �  PQT�  P�  QY`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://Title Screen.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[node name="Title Screen" type="Node"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0, 0, 0, 1 )
position = Vector2( 519, 304 )
scale = Vector2( 17.2188, 10.5 )
texture = ExtResource( 2 )

[node name="RichTextLabel" type="RichTextLabel" parent="."]
margin_left = 20.0
margin_top = 90.0
margin_right = 218.0
margin_bottom = 166.0
rect_scale = Vector2( 5, 5 )
text = "Reinforcement Learning Game"

[node name="MarginContainer" type="MarginContainer" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = 197.36
margin_bottom = -102.64
custom_constants/margin_right = 0
custom_constants/margin_top = 20
custom_constants/margin_left = 0
custom_constants/margin_bottom = 20

[node name="VBoxContainer" type="VBoxContainer" parent="MarginContainer"]
margin_top = 20.0
margin_right = 1024.0
margin_bottom = 280.0
rect_min_size = Vector2( 50, 50 )
size_flags_stretch_ratio = 27.48
custom_constants/separation = 32
alignment = 1

[node name="Button" type="Button" parent="MarginContainer/VBoxContainer"]
margin_right = 1024.0
margin_bottom = 65.0
size_flags_vertical = 3
text = "Play"

[node name="Button3" type="Button" parent="MarginContainer/VBoxContainer"]
margin_top = 97.0
margin_right = 1024.0
margin_bottom = 162.0
size_flags_vertical = 3
text = "Let The Reinforcement Algorithm Play A Little"

[node name="Button2" type="Button" parent="MarginContainer/VBoxContainer"]
margin_top = 194.0
margin_right = 1024.0
margin_bottom = 260.0
size_flags_vertical = 3
text = "Quit"
[connection signal="pressed" from="MarginContainer/VBoxContainer/Button" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="MarginContainer/VBoxContainer/Button3" to="." method="_on_Button3_pressed"]
[connection signal="pressed" from="MarginContainer/VBoxContainer/Button2" to="." method="_on_Button2_pressed"]
    RSRC                     SpatialMaterial                                                                 7      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_enable    script        $   res://environment/Material.material Q         SpatialMaterial 5         	   Material    (                                                                       	          
                                           (              (              (              (              (                   �?        �?   (                                     �w>�#?      �?                             ?             (                 �
?              (           !          "          #          $          %          &          '          (          )          *          +          ,        �?  �?  �?-                  .          /        �?0        �?  �?  �?1                  2          3        �?4          5          RSRC              GDSC      	   *   �      ������������τ�   ���������Ӷ�   �����ض�   �涶   �������   ����򶶶   �����������   �����϶�   ���������Ӷ�   ���������������Ŷ���   ����׶��   ��������¶��   ϶��   ζ��   ����������Ķ   ���������Ӷ�   �������������Ӷ�   ��������������¶   ߶��   ������������������ض   �������Ķ���   ���Ӷ���   ���¶���   ����������������¶��                      d      �         ../player spawner/Player                   Player                                                   #   	   )   
   *      0      7      8      <      >      ?      F      J      K      Q      W      X      _      `      f      j      k      t      z      |      }       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3YY;�  Y;�  �  PQYY:�  �  PR�  QY:�  �  Y:�  �  Y:�  �  YY0�  PQV�  ;�  P�  Q�  �  �  �  �  -YY0�	  P�
  QV�  �  PQYY0�  PQV�  �  T�  �  Y�  �  T�  �  Y�  &�  PQV�  �  �  Y�  &�  PQ�  V�  T�  PQ�  -Y�  �  �  P�  R�  QY�  &�  PQV�  )�  �D  P�  PQQV�  &�  �  P�  QT�  T�  V�  �  P�  QT�  T�  PQ�  -YY0�  PQV�  T�  PQY`[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
sun_energy = 16.0

[resource]
background_mode = 2
background_sky = SubResource( 1 )
GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene load_steps=4 format=2]

[ext_resource path="res://Desk.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 10, 9.94118 )

[node name="Desk" type="Area2D"]

position = Vector2( -4.76837e-06, -34 )
scale = Vector2( 1.875, 2.0625 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]

position = Vector2( 1.90735e-06, 5.48251 )
scale = Vector2( 1.64103, 2.89638 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="." index="1"]

modulate = Color( 1, 0, 0.984375, 1 )
self_modulate = Color( 1, 0, 0.867188, 1 )
position = Vector2( 2.6226e-06, 16.9697 )
scale = Vector2( 0.5, 0.469697 )
texture = ExtResource( 2 )
_sections_unfolded = [ "Visibility" ]

[node name="Sprite2" type="Sprite" parent="." index="2"]

modulate = Color( 1, 0, 0.984375, 1 )
self_modulate = Color( 1, 0, 0.867188, 1 )
position = Vector2( 2.54313e-06, -12.6061 )
scale = Vector2( 0.5, 0.469697 )
texture = ExtResource( 2 )
_sections_unfolded = [ "Visibility" ]

[connection signal="body_entered" from="." to="." method="_on_Desk_body_entered"]


       GDSC   -      g   �     ������������τ�   �����޶�   ���������¶�   ������Ҷ   ����������¶   �����ض�   �涶   �������   ����򶶶   �����������   ���Ӷ���   ���¶���   ��������   ����¶��   ����򶶶   ��ض   ��������ⶶ�   ���ƶ���   ��������󶶶   �����϶�   ���������������Ŷ���   ����׶��   ��������¶��   ϶��   ����¶��   �������������Ҷ�   ζ��   ����������Ķ   �������������Ӷ�   ��������   �����ض�   ���¶���   ����Ҷ��   �������ݶ���   ����������Ŷ   �������������ӄ򶶶�   �������Ҷ���   ����Ķ��   ����¶��   ����������������¶��   ���������¶�   ������ض   ���������Ӷ�   ߶��   ���Ӷ���                      �      X     d                   
      
   Book Added        BOOKS RETURNED:       FINAL HEALTH:                                  	                           	      
   &      +      0      6      7      ;      ?      C      G      L      M      S      W      [      _      a      b      i      m      n      t      u       y   !   {   "   |   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =     >     ?   
  @     A     B     C     D   #  E   %  F   &  G   /  H   1  I   7  J   ;  K   @  L   A  M   I  N   M  O   O  P   P  Q   V  R   [  S   _  T   a  U   b  V   h  W   o  X   v  Y   w  Z   }  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   3YY;�  Y;�  Y;�  Y;�  LMYY;�  �  PQYY:�  �  PR�  QY:�  �  Y:�  �  Y:�	  �  YY>�
  N�  �  �  �  �  �  �  �  �  �  �  �  OYY0�  PQV�  �  �  �  �  �  �  �  �  -YY0�  P�  QV�  �  PQYY0�  PQVY�  &�  V�  .Y�  �  T�  �  Y�  &�  T�  P�
  T�  QV�  �  T�  �  �  -�  '�  T�  P�
  T�  QV�  �  T�  �  �  (V�  �  T�  Y�  &�  PQV�  &�  T�  P�
  T�  QV�  �  T�  �	  �  -Y�  �  �  P�  R�  Q�  -Y0�  P�  QV�  &�  V�  .Y�  �  T�  �  Y�  &�  V�  �  T�  �  �  -�  '�  �  V�  �  T�  �  �  (V�  �  T�  Y�  &�  PQV�  &�  �  V�  �  T�  �	  �  -Y�  �  �  P�  R�  Q�  -Y0�  PQV�  �  �  �  �8  P�  QY�  &P�  
QV�  �   PQ�  -YY0�!  PQV�  �8  P�	  Q�  �  �  �  -YY0�"  PQV�  �8  P�
  R�  Q�  �8  P�  R�  QYY0�   PQV�  �  �  �  �  �  PRQ�  W�#  T�$  �  �  W�%  T�&  PQ�  -YY0�'  PQV�  �(  PQT�)  PQ�  T�*  PQ�  )�+  �D  P�  T�,  PQQV�  �  L�+  MT�*  PQ�  -Y`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 8.66667, 10 )

[node name="Node2D" type="Node2D" index="0"]

_sections_unfolded = [ "Material" ]

[node name="Sprite" type="Sprite" parent="." index="0"]

modulate = Color( 0.171875, 1, 0, 1 )
self_modulate = Color( 0, 1, 0.0625, 1 )
texture = ExtResource( 1 )
_sections_unfolded = [ "Material", "Transform", "Visibility", "Z Index" ]

[node name="StaticBody2D" type="StaticBody2D" parent="." index="1"]

input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" index="0"]

position = Vector2( -4.29153e-06, -2.86102e-06 )
scale = Vector2( 3.42857, 3.07692 )
shape = SubResource( 1 )


        [remap]

path="res://Book.gdc"
 [remap]

path="res://BookSpawn.gdc"
            [remap]

path="res://Characters/Camera2D.gdc"
  [remap]

path="res://Desk.gdc"
 [remap]

path="res://Game.gdc"
 [remap]

path="res://ReinfLearn.gdc"
           [remap]

path="res://Spawn.gdc"
[remap]

path="res://Title Screen.gdc"
         [remap]

path="res://bully.gdc"
[remap]

path="res://person.gdc"
               �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Rein-Forest    application/run/main_scene          res://Title Screen.tscn    application/config/icon         res://icon.png  )   rendering/environment/default_environment          res://default_env.tres             GDPC