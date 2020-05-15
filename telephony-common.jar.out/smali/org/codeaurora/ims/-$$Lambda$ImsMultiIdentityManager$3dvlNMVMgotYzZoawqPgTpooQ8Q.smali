.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsMultiIdentityManager$3dvlNMVMgotYzZoawqPgTpooQ8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsMultiIdentityManager;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsMultiIdentityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsMultiIdentityManager$3dvlNMVMgotYzZoawqPgTpooQ8Q;->f$0:Lorg/codeaurora/ims/ImsMultiIdentityManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsMultiIdentityManager$3dvlNMVMgotYzZoawqPgTpooQ8Q;->f$0:Lorg/codeaurora/ims/ImsMultiIdentityManager;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;->lambda$getMultiIdentityInterface$0(Lorg/codeaurora/ims/ImsMultiIdentityManager;)V

    return-void
.end method
