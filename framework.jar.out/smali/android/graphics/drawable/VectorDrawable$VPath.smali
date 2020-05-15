.class abstract Landroid/graphics/drawable/VectorDrawable$VPath;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VPath"
.end annotation


# static fields
.field private static final PATH_DATA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VPath;",
            "Landroid/util/PathParser$PathData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mChangingConfigurations:I

.field protected mPathData:Landroid/util/PathParser$PathData;

.field mPathName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1590
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPath$1;

    const-class v1, Landroid/util/PathParser$PathData;

    const-string/jumbo v2, "pathData"

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1611
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1585
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1613
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .line 1615
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1585
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1616
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    .line 1617
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mChangingConfigurations:I

    .line 1618
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1619
    return-void
.end method


# virtual methods
.method public getPathData()Landroid/util/PathParser$PathData;
    .locals 1

    .line 1628
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1622
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1604
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VPath;->PATH_DATA:Landroid/util/Property;

    return-object v0

    .line 1608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p1, "pathData"    # Landroid/util/PathParser$PathData;

    .line 1634
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v0, p1}, Landroid/util/PathParser$PathData;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 1635
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathData:Landroid/util/PathParser$PathData;

    invoke-virtual {v2}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$3600(JJ)V

    .line 1638
    :cond_0
    return-void
.end method
