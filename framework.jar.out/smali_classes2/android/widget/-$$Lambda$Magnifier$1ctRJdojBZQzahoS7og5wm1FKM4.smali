.class public final synthetic Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/Magnifier;

.field private final synthetic f$1:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$0:Landroid/widget/Magnifier;

    iput-object p2, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$1:Landroid/widget/Magnifier$InternalPopupWindow;

    iput-boolean p3, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$2:Z

    iput p4, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$3:I

    iput p5, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$4:I

    iput-object p6, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$5:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 7

    iget-object v0, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$0:Landroid/widget/Magnifier;

    iget-object v1, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$1:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-boolean v2, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$2:Z

    iget v3, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$3:I

    iget v4, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$4:I

    iget-object v5, p0, Landroid/widget/-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4;->f$5:Landroid/graphics/Bitmap;

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/widget/Magnifier;->lambda$performPixelCopy$0(Landroid/widget/Magnifier;Landroid/widget/Magnifier$InternalPopupWindow;ZIILandroid/graphics/Bitmap;I)V

    return-void
.end method
