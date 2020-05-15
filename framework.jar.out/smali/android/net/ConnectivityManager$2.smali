.class Landroid/net/ConnectivityManager$2;
.super Landroid/os/ResultReceiver;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 2272
    iput-object p1, p0, Landroid/net/ConnectivityManager$2;->this$0:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 2275
    if-nez p1, :cond_0

    .line 2276
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    goto :goto_0

    .line 2278
    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 2280
    :goto_0
    return-void
.end method
