.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final mForceDefault:Z

.field final mId:Ljava/lang/String;

.field private final mIsAuxIme:Z

.field final mIsDefaultResId:I

.field final mIsVrOnly:Z

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final mSupportsSwitchingToNextInputMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 540
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p3, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 147
    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 149
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 150
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    invoke-static/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 151
    const/4 v5, 0x1

    .line 152
    .local v5, "isAuxIme":Z
    const/4 v6, 0x0

    .line 153
    .local v6, "supportsSwitchingToNextInputMethod":Z
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 156
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 158
    .local v8, "settingsActivityComponent":Ljava/lang/String;
    const/4 v9, 0x0

    .line 160
    .local v9, "isDefaultResId":I
    const/4 v10, 0x0

    .line 161
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v11, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_0
    const-string v12, "android.view.im"

    invoke-virtual {v4, v7, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    move-object v10, v12

    .line 164
    if-eqz v10, :cond_c

    .line 169
    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 171
    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 174
    .local v13, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move v15, v14

    .line 174
    .local v15, "type":I
    const/4 v0, 0x1

    if-eq v14, v0, :cond_0

    const/4 v14, 0x2

    if-eq v15, v14, :cond_0

    .line 171
    .end local v15    # "type":I
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    .restart local v15    # "type":I
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, "nodeName":Ljava/lang/String;
    const-string v0, "input-method"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    sget-object v0, Lcom/android/internal/R$styleable;->InputMethod:[I

    invoke-virtual {v12, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v8, v17

    .line 188
    const/4 v2, 0x3

    move/from16 v18, v5

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 188
    .end local v5    # "isAuxIme":Z
    .local v18, "isAuxIme":Z
    move/from16 v17, v16

    .line 189
    .local v17, "isVrOnly":Z
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v9, v16

    .line 191
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v6, v19

    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move/from16 v5, v18

    .line 198
    .end local v18    # "isAuxIme":Z
    .local v2, "depth":I
    .restart local v5    # "isAuxIme":Z
    :goto_1
    move-object/from16 v20, v0

    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 198
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    move v15, v0

    move/from16 v21, v5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 198
    .end local v5    # "isAuxIme":Z
    .local v21, "isAuxIme":Z
    :try_start_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v0, v2, :cond_1

    goto :goto_3

    .line 240
    .end local v2    # "depth":I
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_1
    move-object/from16 v23, v7

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 240
    .end local v17    # "isVrOnly":Z
    :catchall_0
    move-exception v0

    move-object/from16 v23, v7

    goto/16 :goto_c

    .line 236
    :catch_0
    move-exception v0

    move-object/from16 v23, v7

    .line 236
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    .local v23, "pm":Landroid/content/pm/PackageManager;
    :goto_2
    move/from16 v5, v21

    goto/16 :goto_b

    .line 198
    .end local v5    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "depth":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v17    # "isVrOnly":Z
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "isAuxIme":Z
    :cond_2
    :goto_3
    const/4 v0, 0x1

    if-eq v15, v0, :cond_6

    .line 200
    const/4 v0, 0x2

    if-ne v15, v0, :cond_5

    .line 201
    :try_start_4
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 202
    const-string/jumbo v0, "subtype"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    sget-object v0, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    invoke-virtual {v12, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v5, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 209
    move/from16 v22, v2

    move-object/from16 v23, v7

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 209
    .end local v2    # "depth":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .local v22, "depth":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v5

    .line 211
    move-object/from16 v24, v12

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 211
    .end local v12    # "res":Landroid/content/res/Resources;
    .local v24, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/16 v5, 0x9

    .line 213
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 215
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 217
    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/4 v5, 0x4

    .line 219
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/4 v5, 0x5

    .line 221
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/4 v5, 0x6

    .line 223
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/4 v5, 0x7

    .line 226
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    const/16 v5, 0x8

    .line 228
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 230
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v5, :cond_3

    .line 231
    const/4 v5, 0x0

    .line 231
    .end local v21    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    goto :goto_4

    .line 233
    .end local v5    # "isAuxIme":Z
    .restart local v21    # "isAuxIme":Z
    :cond_3
    move/from16 v5, v21

    .line 233
    .end local v21    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    :goto_4
    :try_start_6
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 234
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    nop

    .line 196
    move-object/from16 v0, v20

    move/from16 v2, v22

    move-object/from16 v7, v23

    move-object/from16 v12, v24

    goto/16 :goto_1

    .line 236
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v17    # "isVrOnly":Z
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "depth":I
    .end local v24    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 203
    .end local v5    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "depth":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v17    # "isVrOnly":Z
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "isAuxIme":Z
    :cond_4
    move/from16 v22, v2

    move-object/from16 v23, v7

    move-object/from16 v24, v12

    .line 203
    .end local v2    # "depth":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "res":Landroid/content/res/Resources;
    .restart local v22    # "depth":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "res":Landroid/content/res/Resources;
    :try_start_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data in input-method does not start with subtype tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 240
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v17    # "isVrOnly":Z
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "depth":I
    .end local v24    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 236
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 240
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v7

    goto/16 :goto_9

    .line 236
    :catch_3
    move-exception v0

    move-object/from16 v23, v7

    move/from16 v5, v21

    goto/16 :goto_a

    .line 196
    .restart local v2    # "depth":I
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v17    # "isVrOnly":Z
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_5
    move/from16 v22, v2

    move-object/from16 v23, v7

    move-object/from16 v0, v20

    move/from16 v5, v21

    .line 196
    .end local v2    # "depth":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "res":Landroid/content/res/Resources;
    .restart local v22    # "depth":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "res":Landroid/content/res/Resources;
    goto/16 :goto_1

    .line 240
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "depth":I
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "res":Landroid/content/res/Resources;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    move-object/from16 v23, v7

    const/4 v7, 0x0

    .line 240
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :goto_5
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move/from16 v0, v17

    .line 243
    .end local v17    # "isVrOnly":Z
    .local v0, "isVrOnly":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 244
    const/4 v5, 0x0

    .line 244
    .end local v21    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    goto :goto_6

    .line 247
    .end local v5    # "isAuxIme":Z
    .restart local v21    # "isAuxIme":Z
    :cond_8
    move/from16 v5, v21

    .line 247
    .end local v21    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    :goto_6
    if-eqz v3, :cond_a

    .line 248
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 249
    .local v2, "N":I
    nop

    .line 249
    .local v7, "i":I
    :goto_7
    if-ge v7, v2, :cond_a

    .line 250
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 251
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 252
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 254
    :cond_9
    const-string v13, "InputMethodInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicated subtype definition found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 254
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 259
    .end local v2    # "N":I
    .end local v7    # "i":I
    :cond_a
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v11}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 260
    iput-object v8, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 261
    iput v9, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 262
    iput-boolean v5, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 263
    iput-boolean v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 264
    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 265
    return-void

    .line 240
    .end local v0    # "isVrOnly":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .local v7, "pm":Landroid/content/pm/PackageManager;
    :catchall_3
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v23, v7

    .line 240
    .end local v5    # "isAuxIme":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_c

    .line 236
    .end local v21    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "isAuxIme":Z
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v23, v7

    .line 236
    .end local v5    # "isAuxIme":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_b

    .line 240
    .end local v21    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "isAuxIme":Z
    :catchall_4
    move-exception v0

    move-object/from16 v23, v7

    move/from16 v21, v18

    .line 240
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "isAuxIme":Z
    .restart local v21    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :goto_9
    goto :goto_c

    .line 236
    .end local v21    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "isAuxIme":Z
    :catch_5
    move-exception v0

    move-object/from16 v23, v7

    move/from16 v5, v18

    .line 236
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "isAuxIme":Z
    .restart local v5    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :goto_a
    goto :goto_b

    .line 180
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .local v12, "res":Landroid/content/res/Resources;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_b
    move/from16 v18, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v12

    .line 180
    .end local v5    # "isAuxIme":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "res":Landroid/content/res/Resources;
    .restart local v18    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "res":Landroid/content/res/Resources;
    :try_start_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with input-method tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v18    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "res":Landroid/content/res/Resources;
    .restart local v5    # "isAuxIme":Z
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_c
    move/from16 v18, v5

    move-object/from16 v23, v7

    .line 165
    .end local v5    # "isAuxIme":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.view.im meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 240
    :catchall_5
    move-exception v0

    move/from16 v21, v18

    goto :goto_c

    .line 236
    :catch_6
    move-exception v0

    move/from16 v5, v18

    goto :goto_b

    .line 240
    .end local v18    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "isAuxIme":Z
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catchall_6
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v23, v7

    move/from16 v21, v18

    .line 240
    .end local v5    # "isAuxIme":Z
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "isAuxIme":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_c

    .line 236
    .end local v18    # "isAuxIme":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "isAuxIme":Z
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_7
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v23, v7

    .line 237
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :goto_b
    :try_start_9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to create context for: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v0

    move/from16 v21, v5

    .line 240
    .end local v5    # "isAuxIme":Z
    .restart local v21    # "isAuxIme":Z
    :goto_c
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    throw v0
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .locals 9
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    .line 297
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .param p7, "supportsSwitchingToNextInputMethod"    # Z
    .param p8, "isVrOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 307
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 309
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 310
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 312
    iput p5, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 313
    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 314
    new-instance v1, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v1, p4}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 315
    iput-boolean p6, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 316
    iput-boolean p7, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 317
    iput-boolean p8, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 318
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 274
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 275
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 276
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    .line 284
    invoke-static {p1, p2, p3}, Landroid/view/inputmethod/InputMethodInfo;->buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V

    .line 288
    return-void
.end method

.method private static buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 322
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 323
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 324
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 325
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 326
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 327
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 328
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 329
    iput-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 330
    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 331
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 332
    iput-object p2, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 333
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 334
    return-object v0
.end method

.method public static computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "service"    # Landroid/content/pm/ResolveInfo;

    .line 120
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsVrOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSupportsSwitchingToNextInputMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 490
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 491
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 493
    :cond_1
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_2

    return v0

    .line 495
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 496
    .local v0, "obj":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 373
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefaultResourceId()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "index"    # I

    .line 432
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuxiliaryIme()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public isDefault(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 449
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-nez v1, :cond_1

    .line 454
    return v0

    .line 456
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 457
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 458
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public isVrOnly()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 394
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 384
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public supportsSwitchingToNextInputMethod()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 527
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 533
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 534
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    .line 535
    return-void
.end method
