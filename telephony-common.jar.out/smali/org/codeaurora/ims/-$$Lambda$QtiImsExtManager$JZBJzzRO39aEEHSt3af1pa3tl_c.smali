.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$QtiImsExtManager$JZBJzzRO39aEEHSt3af1pa3tl_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/QtiImsExtManager;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$QtiImsExtManager$JZBJzzRO39aEEHSt3af1pa3tl_c;->f$0:Lorg/codeaurora/ims/QtiImsExtManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$QtiImsExtManager$JZBJzzRO39aEEHSt3af1pa3tl_c;->f$0:Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-static {v0}, Lorg/codeaurora/ims/QtiImsExtManager;->lambda$obtainBinder$0(Lorg/codeaurora/ims/QtiImsExtManager;)V

    return-void
.end method
