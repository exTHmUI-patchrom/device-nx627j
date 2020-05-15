.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$Style;,
        Landroid/renderscript/Font$FontFamily;
    }
.end annotation


# static fields
.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 50
    const-string/jumbo v0, "sans-serif"

    const-string v1, "arial"

    const-string v2, "helvetica"

    const-string/jumbo v3, "tahoma"

    const-string/jumbo v4, "verdana"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "serif"

    const-string/jumbo v2, "times"

    const-string/jumbo v3, "times new roman"

    const-string/jumbo v4, "palatino"

    const-string v5, "georgia"

    const-string v6, "baskerville"

    const-string v7, "goudy"

    const-string v8, "fantasy"

    const-string v9, "cursive"

    const-string v10, "ITC Stone Serif"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "monospace"

    const-string v1, "courier"

    const-string v2, "courier new"

    const-string/jumbo v3, "monaco"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 131
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 153
    iget-object v0, p0, Landroid/renderscript/Font;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3
    .param p0, "family"    # Landroid/renderscript/Font$FontFamily;

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 97
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Landroid/renderscript/Font$Style;
    .param p4, "pointSize"    # F

    .line 240
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "fontPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v2

    return-object v2
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .line 184
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 185
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 186
    .local v0, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 188
    .local v1, "dpi":I
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v2

    .line 189
    .local v2, "fontId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 192
    new-instance v4, Landroid/renderscript/Font;

    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 193
    .local v4, "rsFont":Landroid/renderscript/Font;
    return-object v4

    .line 190
    .end local v4    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create font from asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "pointSize"    # F

    .line 177
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .line 161
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 162
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 163
    .local v0, "dpi":I
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v1

    .line 165
    .local v1, "fontId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 168
    new-instance v3, Landroid/renderscript/Font;

    invoke-direct {v3, v1, v2, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 170
    .local v3, "rsFont":Landroid/renderscript/Font;
    return-object v3

    .line 166
    .end local v3    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create font from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "pointSize"    # F

    move/from16 v1, p2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 203
    const/4 v0, 0x0

    move-object v3, v0

    .line 205
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 210
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v9, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 212
    .local v9, "dpi":I
    const-wide/16 v10, 0x0

    .line 213
    .local v10, "fontId":J
    instance-of v3, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    .line 214
    move-object v3, v0

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v12

    .line 215
    .local v12, "asset":J
    move-object v3, p0

    move-object v4, v2

    move/from16 v5, p3

    move v6, v9

    move-wide v7, v12

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    move-result-wide v3

    .line 216
    .end local v10    # "fontId":J
    .end local v12    # "asset":J
    .local v3, "fontId":J
    nop

    .line 220
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 223
    new-instance v5, Landroid/renderscript/Font;

    move-object v6, p0

    invoke-direct {v5, v3, v4, v6}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 224
    .local v5, "rsFont":Landroid/renderscript/Font;
    return-object v5

    .line 221
    .end local v5    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    move-object v6, p0

    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create font from resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 217
    .end local v3    # "fontId":J
    .restart local v10    # "fontId":J
    :cond_1
    move-object v6, p0

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Unsupported asset stream created"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v9    # "dpi":I
    .end local v10    # "fontId":J
    .local v3, "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v6, p0

    move-object v4, v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open resource "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # Landroid/renderscript/Font$Style;

    .line 134
    sget-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$FontFamily;

    .line 135
    .local v0, "family":Landroid/renderscript/Font$FontFamily;
    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    return-object v1

    .line 142
    :pswitch_1
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    return-object v1

    .line 140
    :pswitch_2
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    return-object v1

    .line 138
    :pswitch_3
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    return-object v1

    .line 148
    :cond_0
    :goto_0
    const-string v1, "DroidSans.ttf"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static initFontFamilyMap()V
    .locals 4

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 104
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 105
    .local v0, "sansFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v2, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 106
    const-string v2, "Roboto-Regular.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 107
    const-string v2, "Roboto-Bold.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 108
    const-string v2, "Roboto-Italic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 109
    const-string v2, "Roboto-BoldItalic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 112
    new-instance v2, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v2, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 113
    .local v2, "serifFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 114
    const-string v3, "NotoSerif-Regular.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 115
    const-string v3, "NotoSerif-Bold.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 116
    const-string v3, "NotoSerif-Italic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 117
    const-string v3, "NotoSerif-BoldItalic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 120
    new-instance v3, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v3, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    move-object v1, v3

    .line 121
    .local v1, "monoFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 122
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 123
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 124
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 125
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 127
    return-void
.end method
