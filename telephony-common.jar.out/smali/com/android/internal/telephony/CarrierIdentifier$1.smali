.class Lcom/android/internal/telephony/CarrierIdentifier$1;
.super Landroid/database/ContentObserver;
.source "CarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierIdentifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierIdentifier;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierIdentifier;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/CarrierIdentifier;->access$100()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->access$200(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->access$200(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/CarrierIdentifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierIdentifier;->sendEmptyMessage(I)Z

    .line 103
    :cond_1
    :goto_0
    return-void
.end method
