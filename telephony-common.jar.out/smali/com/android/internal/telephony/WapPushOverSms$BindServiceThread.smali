.class Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;
.super Ljava/lang/Thread;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/WapPushOverSms;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/telephony/WapPushOverSms$1;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    .line 105
    return-void
.end method
