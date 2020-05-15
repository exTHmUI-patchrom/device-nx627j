.class Lcom/android/internal/telephony/ims/ImsResolver$7;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;


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

    .line 412
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p2, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    const-string v0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete called for name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "features:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 418
    invoke-static {v2, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->access$100(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->access$200(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 420
    return-void
.end method

.method public onError(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 424
    const-string v0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "returned with an error result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$7;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    const/16 v1, 0x1388

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->access$300(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V

    .line 426
    return-void
.end method
