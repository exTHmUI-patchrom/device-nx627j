.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private final mRotation:I

.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;I)V
    .locals 0
    .param p2, "rotation"    # I

    .line 1174
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    .line 1176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1192
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchManager;->isSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 1197
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1198
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lnubia/os/screenswitch/ScreenSwitchInternal;->noteUpdateRotation(Z)V

    goto :goto_0

    .line 1209
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1200
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->isRotationChoicePossible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidRotationChoice(II)Z

    move-result v2

    .line 1204
    .local v2, "isValid":Z
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->mRotation:I

    invoke-static {v3, v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    .line 1205
    .end local v2    # "isValid":Z
    goto :goto_1

    .line 1206
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    :goto_1
    if-eqz v0, :cond_3

    .line 1210
    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->noteUpdateRotation(Z)V

    .line 1214
    :cond_3
    return-void

    .line 1209
    :goto_2
    if-eqz v0, :cond_4

    .line 1210
    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->noteUpdateRotation(Z)V

    :cond_4
    throw v2
.end method
