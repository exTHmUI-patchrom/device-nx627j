.class Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 1

    .line 580
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    .line 581
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/ColorDisplayService;->access$1300(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 582
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .line 585
    if-nez p1, :cond_0

    .line 588
    return-void

    .line 591
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 592
    .local v0, "activate":Z
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 593
    .local v1, "lastActivatedTime":Ljava/time/LocalDateTime;
    if-eqz v1, :cond_1

    .line 594
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 595
    .local v2, "now":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 596
    .local v3, "sunrise":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/time/LocalDateTime;

    .line 606
    .end local v2    # "now":Ljava/time/LocalDateTime;
    .end local v3    # "sunrise":Ljava/time/LocalDateTime;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_4

    .line 608
    :cond_2
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "nubia_screen_switch_feature"

    invoke-static {v3}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 609
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2, v0}, Lcom/android/server/display/ColorDisplayService;->access$1100(Lcom/android/server/display/ColorDisplayService;Z)V

    .line 610
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2, v0}, Lcom/android/server/display/ColorDisplayService;->access$1200(Lcom/android/server/display/ColorDisplayService;Z)V

    goto :goto_0

    .line 612
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 615
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 632
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1400(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 623
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 628
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .line 636
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTwilightStateChanged: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 639
    return-void
.end method
