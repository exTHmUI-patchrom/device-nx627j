.class Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 307
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const v2, 0x2006f

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$700(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 315
    :cond_0
    return v1
.end method
