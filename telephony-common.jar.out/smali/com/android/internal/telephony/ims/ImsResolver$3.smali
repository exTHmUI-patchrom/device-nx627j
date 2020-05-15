.class Lcom/android/internal/telephony/ims/ImsResolver$3;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/ImsResolver;

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$3;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlotIndex(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 255
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public getSubId(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 245
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 246
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    .line 248
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 250
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
