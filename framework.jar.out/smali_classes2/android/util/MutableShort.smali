.class public final Landroid/util/MutableShort;
.super Ljava/lang/Object;
.source "MutableShort.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-short p1, p0, Landroid/util/MutableShort;->value:S

    .line 28
    return-void
.end method
