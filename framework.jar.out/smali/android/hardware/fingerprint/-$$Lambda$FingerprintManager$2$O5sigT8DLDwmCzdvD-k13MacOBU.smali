.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$2;

.field private final synthetic f$1:Landroid/hardware/fingerprint/Fingerprint;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$0:Landroid/hardware/fingerprint/FingerprintManager$2;

    iput-object p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iput p3, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$0:Landroid/hardware/fingerprint/FingerprintManager$2;

    iget-object v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$2;->lambda$onAuthenticationSucceeded$1(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method
