.class Lcom/android/server/display/ColorDisplayService$CustomAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 2

    .line 474
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    .line 475
    invoke-virtual {p1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 476
    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 486
    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    .line 464
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method private updateActivated()V
    .locals 6

    .line 489
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 490
    .local v0, "now":Ljava/time/LocalDateTime;
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v1, v0}, Lcom/android/server/display/ColorDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 491
    .local v1, "start":Ljava/time/LocalDateTime;
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v2, v1}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 492
    .local v2, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    .line 494
    .local v3, "activate":Z
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 504
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v3, :cond_2

    .line 506
    :cond_0
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "nubia_screen_switch_feature"

    invoke-static {v5}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4, v3}, Lcom/android/server/display/ColorDisplayService;->access$1100(Lcom/android/server/display/ColorDisplayService;Z)V

    .line 508
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4, v3}, Lcom/android/server/display/ColorDisplayService;->access$1200(Lcom/android/server/display/ColorDisplayService;Z)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 514
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 515
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 11
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/time/LocalDateTime;

    .line 518
    if-eqz p1, :cond_1

    .line 519
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 521
    .local v0, "next":Ljava/time/LocalDateTime;
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 522
    .local v9, "millis":J
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "ColorDisplayService"

    const/4 v8, 0x0

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 524
    .end local v0    # "next":Ljava/time/LocalDateTime;
    .end local v9    # "millis":J
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 551
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 552
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 553
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 571
    const-string v0, "ColorDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 573
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 564
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 566
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 567
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 557
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 559
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 560
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 533
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 535
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 538
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 539
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 547
    return-void
.end method
