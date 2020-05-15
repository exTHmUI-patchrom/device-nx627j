.class public interface abstract Landroid/view/WindowManagerPolicyConstants;
.super Ljava/lang/Object;
.source "WindowManagerPolicyConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_USER_ACTIVITY_NOTIFICATION:Ljava/lang/String; = "android.intent.action.USER_ACTIVITY_NOTIFICATION"

.field public static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final APPLICATION_LAYER:I = 0x2

.field public static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_INTERACTIVE:I = 0x20000000

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x2

.field public static final FLAG_WAKE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final NAV_BAR_BOTTOM:I = 0x4

.field public static final NAV_BAR_LEFT:I = 0x1

.field public static final NAV_BAR_RIGHT:I = 0x2

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1


# direct methods
.method public static offReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "why"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_0
    const-string v0, "OFF_BECAUSE_OF_TIMEOUT"

    return-object v0

    .line 117
    :pswitch_1
    const-string v0, "OFF_BECAUSE_OF_USER"

    return-object v0

    .line 115
    :pswitch_2
    const-string v0, "OFF_BECAUSE_OF_ADMIN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
