.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VGroup"
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x64

.field private static final PIVOT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_X_INDEX:I = 0x1

.field private static final PIVOT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_Y_INDEX:I = 0x2

.field private static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROTATION_INDEX:I = 0x0

.field private static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_X_INDEX:I = 0x3

.field private static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_Y_INDEX:I = 0x4

.field private static final TRANSFORM_PROPERTY_COUNT:I = 0x7

.field private static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_X_INDEX:I = 0x5

.field private static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_Y_INDEX:I = 0x6

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/VectorDrawable$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mIsStateful:Z

.field private final mNativePtr:J

.field private mThemeAttrs:[I

.field private mTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1152
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 1175
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    const-string/jumbo v1, "translateX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    .line 1188
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    const-string/jumbo v1, "translateY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    .line 1201
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    .line 1214
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    .line 1227
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    const-string/jumbo v1, "pivotX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    .line 1240
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    const-string/jumbo v1, "pivotY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    .line 1253
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$8;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    .line 1266
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$9;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1329
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1330
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$1700()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1331
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .locals 5
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1295
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1297
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1298
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1299
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1300
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1301
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_0
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$1600(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1306
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1307
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1309
    .local v2, "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v3, :cond_1

    .line 1310
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1311
    .local v3, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v4, v3, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1312
    .end local v3    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    goto :goto_3

    .line 1314
    :cond_1
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v3, :cond_2

    .line 1315
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .local v3, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_1
    goto :goto_2

    .line 1316
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v3, :cond_4

    .line 1317
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    goto :goto_1

    .line 1319
    .restart local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_2
    nop

    .line 1321
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1322
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1323
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    .restart local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unknown object in the tree!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1327
    .end local v1    # "i":I
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_5
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1140
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic access$1000()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .locals 2
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1140
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$900()Landroid/util/Property;
    .locals 1

    .line 1140
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    return-object v0
.end method

.method static getPropertyIndex(Ljava/lang/String;)I
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 1166
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1170
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .locals 4
    .param p1, "child"    # Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1347
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$1800(JJ)V

    .line 1348
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1350
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1476
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1479
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1480
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1483
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1484
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1485
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1486
    .local v3, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1487
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1490
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1484
    .end local v3    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    .line 1459
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1460
    return v1

    .line 1463
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1464
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1466
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1467
    return v1

    .line 1464
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1471
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1343
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1362
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 3

    .line 1450
    const/16 v0, 0x64

    .line 1451
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1452
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1454
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public getPivotX()F
    .locals 2

    .line 1510
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$2400(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPivotY()F
    .locals 2

    .line 1522
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$2600(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1334
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    return-object v0

    .line 1338
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()F
    .locals 2

    .line 1498
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$2200(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScaleX()F
    .locals 2

    .line 1534
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$2800(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScaleY()F
    .locals 2

    .line 1546
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$3000(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTranslateX()F
    .locals 2

    .line 1558
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$3200(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTranslateY()F
    .locals 2

    .line 1570
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$3400(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 6

    .line 1434
    const/4 v0, 0x0

    .line 1436
    .local v0, "result":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1437
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1438
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1439
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1440
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->hasFocusStateSpecified()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1437
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1367
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1369
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1371
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1429
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return v0
.end method

.method public onStateChange([I)Z
    .locals 6
    .param p1, "stateSet"    # [I

    .line 1414
    const/4 v0, 0x0

    .line 1416
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1417
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1418
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1419
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1420
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1417
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1424
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    return v0
.end method

.method public setPivotX(F)V
    .locals 2
    .param p1, "pivotX"    # F

    .line 1515
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$2500(JF)V

    .line 1518
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 2
    .param p1, "pivotY"    # F

    .line 1527
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$2700(JF)V

    .line 1530
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "rotation"    # F

    .line 1503
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$2300(JF)V

    .line 1506
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .line 1539
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$2900(JF)V

    .line 1542
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 2
    .param p1, "scaleY"    # F

    .line 1551
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$3100(JF)V

    .line 1554
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 2
    .param p1, "translateX"    # F

    .line 1563
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$3300(JF)V

    .line 1566
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 2
    .param p1, "translateY"    # F

    .line 1575
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->access$3500(JF)V

    .line 1578
    :cond_0
    return-void
.end method

.method public setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 2
    .param p1, "treeRoot"    # Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1354
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1356
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 20
    .param p1, "a"    # Landroid/content/res/TypedArray;

    move-object/from16 v0, p0

    .line 1375
    move-object/from16 v1, p1

    iget v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1378
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1379
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v3, 0x7

    if-nez v2, :cond_0

    .line 1382
    new-array v2, v3, [F

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    .line 1384
    :cond_0
    iget-wide v4, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$1900(J[FI)Z

    move-result v2

    .line 1385
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 1388
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1390
    .local v4, "rotate":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .line 1392
    .local v16, "pivotX":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .line 1394
    .local v17, "pivotY":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .line 1396
    .local v18, "scaleX":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .line 1398
    .local v19, "scaleY":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v6, v7, v6

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1400
    .local v6, "translateX":F
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v7, v8, v7

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1403
    .local v3, "translateY":F
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1404
    .local v5, "groupName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1405
    iput-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1406
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    .line 1408
    :cond_1
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    move v9, v4

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move v14, v6

    move v15, v3

    invoke-static/range {v7 .. v15}, Landroid/graphics/drawable/VectorDrawable;->access$2100(JFFFFFFF)V

    .line 1410
    return-void

    .line 1386
    .end local v3    # "translateY":F
    .end local v4    # "rotate":F
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v6    # "translateX":F
    .end local v16    # "pivotX":F
    .end local v17    # "pivotY":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error: inconsistent property count"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
