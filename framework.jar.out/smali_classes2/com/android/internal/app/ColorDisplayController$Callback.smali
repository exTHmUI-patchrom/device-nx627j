.class public interface abstract Lcom/android/internal/app/ColorDisplayController$Callback;
.super Ljava/lang/Object;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ColorDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 687
    return-void
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 648
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .line 654
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0
    .param p1, "colorTemperature"    # I

    .line 673
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 666
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 660
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 0
    .param p1, "displayColorMode"    # I

    .line 680
    return-void
.end method
