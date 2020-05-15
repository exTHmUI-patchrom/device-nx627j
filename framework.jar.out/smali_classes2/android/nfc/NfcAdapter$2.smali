.class Landroid/nfc/NfcAdapter$2;
.super Landroid/nfc/ITagRemovedCallback$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/NfcAdapter;

    .line 1717
    iput-object p1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/nfc/NfcAdapter$2;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-direct {p0}, Landroid/nfc/ITagRemovedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagRemoved()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/nfc/NfcAdapter$2$1;

    invoke-direct {v1, p0}, Landroid/nfc/NfcAdapter$2$1;-><init>(Landroid/nfc/NfcAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1728
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$OnTagRemovedListener;->onTagRemoved()V

    .line 1730
    :goto_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v0, v0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1731
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 1732
    monitor-exit v0

    .line 1733
    return-void

    .line 1732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
