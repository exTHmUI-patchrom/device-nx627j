.class Landroid/app/trust/TrustManager$1;
.super Landroid/app/trust/ITrustListener$Stub;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;

.field final synthetic val$trustListener:Landroid/app/trust/TrustManager$TrustListener;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;

    .line 137
    iput-object p1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    iput-object p2, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    invoke-direct {p0}, Landroid/app/trust/ITrustListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustChanged(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 140
    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "m":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "initiatedByUser"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 156
    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 150
    iget-object v0, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-static {v0}, Landroid/app/trust/TrustManager;->access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/trust/TrustManager$1;->val$trustListener:Landroid/app/trust/TrustManager$TrustListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method
