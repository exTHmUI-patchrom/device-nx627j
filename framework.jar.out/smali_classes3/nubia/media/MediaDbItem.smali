.class public Lnubia/media/MediaDbItem;
.super Ljava/lang/Object;
.source "MediaDbItem.java"


# instance fields
.field public _id:J

.field public date_modified:J

.field public format:I


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "format"    # I
    .param p4, "date_modified"    # J

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lnubia/media/MediaDbItem;->_id:J

    .line 23
    iput p3, p0, Lnubia/media/MediaDbItem;->format:I

    .line 24
    iput-wide p4, p0, Lnubia/media/MediaDbItem;->date_modified:J

    .line 25
    return-void
.end method
