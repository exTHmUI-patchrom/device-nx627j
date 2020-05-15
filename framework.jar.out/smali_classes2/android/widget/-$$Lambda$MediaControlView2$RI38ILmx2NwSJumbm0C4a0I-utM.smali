.class public final synthetic Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/update/ViewGroupHelper$ProviderCreator;


# instance fields
.field private final synthetic f$0:Landroid/util/AttributeSet;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$0:Landroid/util/AttributeSet;

    iput p2, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$1:I

    iput p3, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$2:I

    return-void
.end method


# virtual methods
.method public final createProvider(Landroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/ViewGroupProvider;
    .locals 6

    iget-object v0, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$0:Landroid/util/AttributeSet;

    iget v1, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$1:I

    iget v2, p0, Landroid/widget/-$$Lambda$MediaControlView2$RI38ILmx2NwSJumbm0C4a0I-utM;->f$2:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/widget/MediaControlView2;->lambda$new$0(Landroid/util/AttributeSet;IILandroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/MediaControlView2Provider;

    move-result-object p1

    return-object p1
.end method
