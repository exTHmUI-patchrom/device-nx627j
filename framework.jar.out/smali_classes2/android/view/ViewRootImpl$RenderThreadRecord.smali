.class Landroid/view/ViewRootImpl$RenderThreadRecord;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RenderThreadRecord"
.end annotation


# instance fields
.field isTranslucent:Z

.field mSurfaceName:Ljava/lang/String;

.field renderThread:Landroid/view/ThreadedRenderer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1263
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1264
    :cond_0
    instance-of v1, p1, Landroid/view/ViewRootImpl$RenderThreadRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1265
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewRootImpl$RenderThreadRecord;

    .line 1266
    .local v1, "record":Landroid/view/ViewRootImpl$RenderThreadRecord;
    iget-boolean v3, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    iget-boolean v4, v1, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    .line 1267
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1266
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1271
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1255
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->mSurfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1256
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1257
    iget-boolean v2, p0, Landroid/view/ViewRootImpl$RenderThreadRecord;->isTranslucent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1259
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
