.class Lcom/android/internal/telephony/TimeServiceHelper$1;
.super Landroid/database/ContentObserver;
.source "TimeServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/TimeServiceHelper;->setListener(Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TimeServiceHelper;

.field final synthetic val$listener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TimeServiceHelper;Landroid/os/Handler;Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/TimeServiceHelper;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/TimeServiceHelper$1;->this$0:Lcom/android/internal/telephony/TimeServiceHelper;

    iput-object p3, p0, Lcom/android/internal/telephony/TimeServiceHelper$1;->val$listener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/TimeServiceHelper$1;->val$listener:Lcom/android/internal/telephony/TimeServiceHelper$Listener;

    iget-object v1, p0, Lcom/android/internal/telephony/TimeServiceHelper$1;->this$0:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeDetectionEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/TimeServiceHelper$Listener;->onTimeDetectionChange(Z)V

    .line 82
    return-void
.end method
