# Scripts/Player.gd
extends CharacterBody2D

@export var speed: float = 200.0
@export var current_weapon_damage: int = 10
@export var health: int = 100

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direction.x +=1
	if Input.is_action_pressed("ui_left"):
		direction.x -=1
	if Input.is_action_pressed("ui_down"):
		direction.y +=1
	if Input.is_action_pressed("ui_up"):
		direction.y -=1
	
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("attack"):
		attack()

func attack() -> void:
	# 기본 공격 : 이후 타겟팅 및 충돌 판정 로직 추가 가능함
	print("Player Attack!")
