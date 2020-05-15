.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
.super Ljava/lang/Thread;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanRawTableThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->access$100(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->cancelNewMessageNotification(Landroid/content/Context;)V

    .line 104
    return-void
.end method
