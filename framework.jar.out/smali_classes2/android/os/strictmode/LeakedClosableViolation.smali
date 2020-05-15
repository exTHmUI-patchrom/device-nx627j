.class public final Landroid/os/strictmode/LeakedClosableViolation;
.super Landroid/os/strictmode/Violation;
.source "LeakedClosableViolation.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .line 21
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Landroid/os/strictmode/LeakedClosableViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    return-void
.end method
