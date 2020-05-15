.class public final Landroid/util/MutableLong;
.super Ljava/lang/Object;
.source "MutableLong.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Landroid/util/MutableLong;->value:J

    .line 28
    return-void
.end method
