.class Lcom/android/server/TelephonyRegistry$RegistryRunnable;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistryRunnable"
.end annotation


# static fields
.field static final CMD_BROADCAST_CALL_STATE:I = 0x3

.field static final CMD_BROADCAST_DATA_CONNECTION:I = 0x4

.field static final CMD_BROADCAST_DATA_FAILED:I = 0x5

.field static final CMD_BROADCAST_PRECISE_CALL_STATE:I = 0x6

.field static final CMD_BROADCAST_PRECISE_DATA_CONNECTION:I = 0x7

.field static final CMD_BROADCAST_SERVICE_STATE:I = 0x1

.field static final CMD_BROADCAST_SIGNAL_STRENGTH:I = 0x2


# instance fields
.field private mCmd:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentWithPhoneNumber:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;ILandroid/content/Intent;)V
    .locals 0
    .param p2, "cmd"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 2089
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    iput p2, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mCmd:I

    .line 2091
    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    .line 2092
    return-void
.end method

.method public constructor <init>(Lcom/android/server/TelephonyRegistry;ILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p2, "cmd"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "intentWithPhoneNumber"    # Landroid/content/Intent;

    .line 2095
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry$RegistryRunnable;-><init>(Lcom/android/server/TelephonyRegistry;ILandroid/content/Intent;)V

    .line 2096
    iput-object p4, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntentWithPhoneNumber:Landroid/content/Intent;

    .line 2097
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2100
    iget v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mCmd:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2128
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2130
    goto/16 :goto_0

    .line 2124
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2126
    goto :goto_0

    .line 2121
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2122
    goto :goto_0

    .line 2118
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2119
    goto :goto_0

    .line 2108
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntentWithPhoneNumber:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const/16 v4, 0x33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 2113
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntentWithPhoneNumber:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.READ_CALL_LOG"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 2116
    goto :goto_0

    .line 2105
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2106
    goto :goto_0

    .line 2102
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$1100(Lcom/android/server/TelephonyRegistry;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$RegistryRunnable;->mIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2103
    nop

    .line 2135
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
