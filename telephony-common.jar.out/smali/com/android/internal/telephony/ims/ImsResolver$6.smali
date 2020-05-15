.class Lcom/android/internal/telephony/ims/ImsResolver$6;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;


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

    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$6;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callbacks"    # Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 324
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    return-object v0
.end method

.method public getServiceInterface()Ljava/lang/String;
    .locals 1

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method
