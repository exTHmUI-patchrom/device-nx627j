.class Lcom/android/server/policy/PhoneWindowManager$20;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$wakeTime:J


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 7875
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-wide p2, p0, Lcom/android/server/policy/PhoneWindowManager$20;->val$wakeTime:J

    iput-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$20;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 7878
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDealyPowerWakeup(Z)V

    .line 7879
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$20;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$20;->val$wakeTime:J

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$20;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 7880
    return-void
.end method
