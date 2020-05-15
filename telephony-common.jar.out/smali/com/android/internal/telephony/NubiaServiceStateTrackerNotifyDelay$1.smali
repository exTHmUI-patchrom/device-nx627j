.class Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay$1;
.super Ljava/lang/Object;
.source "NubiaServiceStateTrackerNotifyDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay$1;->this$0:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay$1;->this$0:Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;

    invoke-static {v0}, Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;->access$000(Lcom/android/internal/telephony/NubiaServiceStateTrackerNotifyDelay;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyServiceStateChanged()V

    .line 38
    return-void
.end method
