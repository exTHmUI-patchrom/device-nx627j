.class Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
.super Landroid/net/NetworkFactory;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneSwitcherNetworkRequestListener"
.end annotation


# instance fields
.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 1
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;
    .param p4, "ps"    # Lcom/android/internal/telephony/PhoneSwitcher;

    .line 229
    const-string v0, "PhoneSwitcherNetworkRequstListener"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 230
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 231
    return-void
.end method


# virtual methods
.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needNetworkFor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNetworkFor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method
