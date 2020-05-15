.class Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 132
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$400(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$300(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    .line 152
    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$200(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 148
    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$100(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 144
    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->access$000(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    .line 140
    nop

    .line 159
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
