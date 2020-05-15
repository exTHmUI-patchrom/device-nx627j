.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$2;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;->f$0:Landroid/hardware/fingerprint/FingerprintManager$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;->f$0:Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager$2;->lambda$onAuthenticationFailed$2(Landroid/hardware/fingerprint/FingerprintManager$2;)V

    return-void
.end method
