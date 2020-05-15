.class final Landroid/service/autofill/ImageTransformation$Option;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Option"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final pattern:Ljava/util/regex/Pattern;

.field public final resId:I


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    .line 287
    iput p2, p0, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    .line 288
    invoke-static {p3}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    .line 289
    return-void
.end method
