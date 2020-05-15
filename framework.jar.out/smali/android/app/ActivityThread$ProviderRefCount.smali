.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public final client:Landroid/app/ActivityThread$ProviderClientRecord;

.field public final holder:Landroid/app/ContentProviderHolder;

.field public removePending:Z

.field public stableCount:I

.field public unstableCount:I


# direct methods
.method constructor <init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    .locals 0
    .param p1, "inHolder"    # Landroid/app/ContentProviderHolder;
    .param p2, "inClient"    # Landroid/app/ActivityThread$ProviderClientRecord;
    .param p3, "sCount"    # I
    .param p4, "uCount"    # I

    .line 4564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4565
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 4566
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderRefCount;->client:Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4567
    iput p3, p0, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 4568
    iput p4, p0, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 4569
    return-void
.end method
