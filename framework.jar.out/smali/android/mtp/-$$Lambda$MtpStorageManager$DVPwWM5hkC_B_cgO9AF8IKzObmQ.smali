.class public final synthetic Landroid/mtp/-$$Lambda$MtpStorageManager$DVPwWM5hkC_B_cgO9AF8IKzObmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/mtp/-$$Lambda$MtpStorageManager$DVPwWM5hkC_B_cgO9AF8IKzObmQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroid/mtp/-$$Lambda$MtpStorageManager$DVPwWM5hkC_B_cgO9AF8IKzObmQ;->f$0:I

    check-cast p1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager;->lambda$getObjects$1(ILandroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1

    return p1
.end method
