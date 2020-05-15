.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final DEBUG:Z = false

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    sput-object v1, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v0

    const-class v2, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sput-object v1, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 108
    new-array v1, v3, [I

    const/high16 v2, 0x1010000

    aput v2, v1, v0

    sput-object v1, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    .line 566
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 217
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 218
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 219
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 220
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 221
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 222
    return-void
.end method

.method static final consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1045
    .local v0, "currentDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 1046
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-eq v2, v1, :cond_1

    .end local v2    # "type":I
    goto :goto_0

    .line 1049
    .restart local v2    # "type":I
    :cond_1
    return-void
.end method

.method private createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 741
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 697
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    const-string v0, "layout_inflater"

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 230
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 233
    return-object v0

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 911
    move-object/from16 v9, p4

    instance-of v1, v8, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 916
    sget-object v1, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 917
    .local v10, "ta":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 918
    .local v12, "themeResId":I
    const/4 v13, 0x1

    if-eqz v12, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v14, v1

    .line 919
    .local v14, "hasThemeOverride":Z
    if-eqz v14, :cond_1

    .line 920
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 922
    .end local p2    # "context":Landroid/content/Context;
    .local v15, "context":Landroid/content/Context;
    :cond_1
    move-object v15, v0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 926
    const-string v0, "layout"

    const/4 v6, 0x0

    invoke-interface {v9, v6, v0, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 927
    .local v0, "layout":I
    if-nez v0, :cond_3

    .line 928
    const-string v1, "layout"

    invoke-interface {v9, v6, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 936
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 937
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attr"

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 936
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 936
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 930
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    if-nez v1, :cond_4

    .line 943
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    .line 945
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v15}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    invoke-virtual {v1, v0, v2, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 946
    iget-object v1, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 949
    .end local v0    # "layout":I
    .local v5, "layout":I
    :cond_5
    move v5, v0

    if-eqz v5, :cond_b

    .line 954
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 957
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 957
    .local v0, "childAttrs":Landroid/util/AttributeSet;
    :goto_2
    move-object v3, v0

    .line 959
    .end local v0    # "childAttrs":Landroid/util/AttributeSet;
    .local v3, "childAttrs":Landroid/util/AttributeSet;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v2, v0

    .line 959
    .local v2, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    if-eq v2, v13, :cond_6

    .line 957
    .end local v2    # "type":I
    move-object v0, v3

    goto :goto_2

    .line 964
    .restart local v2    # "type":I
    :cond_6
    if-ne v2, v1, :cond_a

    .line 969
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 971
    .local v1, "childName":Ljava/lang/String;
    const-string/jumbo v0, "merge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_7

    .line 974
    const/4 v6, 0x0

    move-object/from16 v16, v1

    move-object v1, v7

    .line 974
    .end local v1    # "childName":Ljava/lang/String;
    .local v16, "childName":Ljava/lang/String;
    move/from16 v17, v2

    move-object v2, v4

    .line 974
    .end local v2    # "type":I
    .local v17, "type":I
    move-object v11, v3

    move-object v3, v8

    .line 974
    .end local v3    # "childAttrs":Landroid/util/AttributeSet;
    .local v11, "childAttrs":Landroid/util/AttributeSet;
    move-object v13, v4

    move-object v4, v15

    .line 974
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v13, "childParser":Landroid/content/res/XmlResourceParser;
    move/from16 v18, v5

    move-object v5, v11

    .line 974
    .end local v5    # "layout":I
    .local v18, "layout":I
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    move-object v4, v13

    goto/16 :goto_6

    .line 1027
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v16    # "childName":Ljava/lang/String;
    .end local v17    # "type":I
    :catchall_0
    move-exception v0

    move-object v4, v13

    goto/16 :goto_7

    .line 976
    .end local v13    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "layout":I
    .restart local v1    # "childName":Ljava/lang/String;
    .restart local v2    # "type":I
    .restart local v3    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "layout":I
    :cond_7
    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v5

    move-object v5, v4

    move-object v4, v3

    .line 976
    .end local v1    # "childName":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "childAttrs":Landroid/util/AttributeSet;
    .local v4, "childAttrs":Landroid/util/AttributeSet;
    .local v5, "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "childName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v18    # "layout":I
    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v19, v4

    move-object v4, v15

    .line 976
    .end local v4    # "childAttrs":Landroid/util/AttributeSet;
    .local v19, "childAttrs":Landroid/util/AttributeSet;
    move-object/from16 v20, v5

    move-object/from16 v5, v19

    .line 976
    .end local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v20, "childParser":Landroid/content/res/XmlResourceParser;
    move-object v0, v6

    move v6, v14

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v1

    .line 978
    .local v1, "view":Landroid/view/View;
    move-object v2, v8

    check-cast v2, Landroid/view/ViewGroup;

    .line 980
    .local v2, "group":Landroid/view/ViewGroup;
    sget-object v3, Lcom/android/internal/R$styleable;->Include:[I

    invoke-virtual {v15, v9, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 982
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 983
    .local v5, "id":I
    invoke-virtual {v3, v13, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 984
    .local v6, "visibility":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 994
    move-object/from16 v21, v0

    .line 996
    .local v21, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_3
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v21, v0

    .line 999
    goto :goto_3

    .line 1027
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "id":I
    .end local v6    # "visibility":I
    .end local v16    # "childName":Ljava/lang/String;
    .end local v17    # "type":I
    .end local v19    # "childAttrs":Landroid/util/AttributeSet;
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catchall_1
    move-exception v0

    move-object/from16 v4, v20

    goto/16 :goto_7

    .line 997
    .restart local v1    # "view":Landroid/view/View;
    .restart local v2    # "group":Landroid/view/ViewGroup;
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "id":I
    .restart local v6    # "visibility":I
    .restart local v16    # "childName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v19    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v0

    .line 1000
    :goto_3
    if-nez v21, :cond_8

    .line 1001
    move-object/from16 v11, v19

    :try_start_4
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1001
    .end local v19    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    move-object/from16 v21, v0

    goto :goto_4

    .line 1003
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v19    # "childAttrs":Landroid/util/AttributeSet;
    :cond_8
    move-object/from16 v11, v19

    move-object/from16 v0, v21

    .line 1003
    .end local v19    # "childAttrs":Landroid/util/AttributeSet;
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    :goto_4
    :try_start_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1006
    move-object/from16 v4, v20

    :try_start_6
    invoke-virtual {v7, v4, v1, v11, v13}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1008
    .end local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    const/4 v13, -0x1

    if-eq v5, v13, :cond_9

    .line 1009
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 1012
    :cond_9
    packed-switch v6, :pswitch_data_0

    goto :goto_5

    .line 1020
    :pswitch_0
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1017
    :pswitch_1
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    goto :goto_5

    .line 1014
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    nop

    .line 1024
    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1027
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "id":I
    .end local v6    # "visibility":I
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v16    # "childName":Ljava/lang/String;
    :goto_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1028
    nop

    .line 1027
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v12    # "themeResId":I
    .end local v14    # "hasThemeOverride":Z
    .end local v18    # "layout":I
    move/from16 v0, v17

    .line 1030
    .end local v17    # "type":I
    .local v0, "type":I
    nop

    .line 1031
    nop

    .line 1034
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1035
    return-void

    .line 1027
    .end local v0    # "type":I
    .restart local v10    # "ta":Landroid/content/res/TypedArray;
    .restart local v12    # "themeResId":I
    .restart local v14    # "hasThemeOverride":Z
    .restart local v18    # "layout":I
    .restart local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v0

    move-object/from16 v4, v20

    .line 1027
    .end local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    goto :goto_7

    .line 965
    .end local v18    # "layout":I
    .local v2, "type":I
    .local v3, "childAttrs":Landroid/util/AttributeSet;
    .local v5, "layout":I
    :cond_a
    move/from16 v17, v2

    move-object v11, v3

    move/from16 v18, v5

    .line 965
    .end local v2    # "type":I
    .end local v3    # "childAttrs":Landroid/util/AttributeSet;
    .end local v5    # "layout":I
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v17    # "type":I
    .restart local v18    # "layout":I
    :try_start_7
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1027
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v17    # "type":I
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 1027
    .end local v18    # "layout":I
    .restart local v5    # "layout":I
    :catchall_4
    move-exception v0

    move/from16 v18, v5

    .line 1027
    .end local v5    # "layout":I
    .restart local v18    # "layout":I
    :goto_7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    .line 950
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "layout":I
    .restart local v5    # "layout":I
    :cond_b
    move/from16 v18, v5

    move-object v0, v6

    .line 950
    .end local v5    # "layout":I
    .restart local v18    # "layout":I
    const-string v1, "layout"

    invoke-interface {v9, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1031
    .end local v0    # "value":Ljava/lang/String;
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v12    # "themeResId":I
    .end local v14    # "hasThemeOverride":Z
    .end local v15    # "context":Landroid/content/Context;
    .end local v18    # "layout":I
    .restart local p2    # "context":Landroid/content/Context;
    :cond_c
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 898
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 899
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 900
    .local v3, "key":I
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 901
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 902
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 904
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 905
    return-void
.end method

.method private final verifyClassLoader(Ljava/lang/reflect/Constructor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 569
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 570
    .local v0, "constructorLoader":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 572
    return v2

    .line 576
    :cond_0
    iget-object v1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 578
    .local v1, "cl":Ljava/lang/ClassLoader;
    :cond_1
    if-ne v0, v1, :cond_2

    .line 579
    return v2

    .line 581
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 582
    if-nez v1, :cond_1

    .line 583
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 605
    sget-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 606
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;->verifyClassLoader(Ljava/lang/reflect/Constructor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 608
    sget-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_0
    const/4 v1, 0x0

    .line 613
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v2, 0x8

    :try_start_0
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 615
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 617
    iget-object v6, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 618
    if-eqz p2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 617
    :cond_1
    move-object v7, p1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/view/View;

    .line 618
    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 620
    iget-object v6, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 621
    iget-object v6, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v6, v1}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v6

    .line 622
    .local v6, "allowed":Z
    if-nez v6, :cond_2

    .line 623
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 626
    .end local v6    # "allowed":Z
    :cond_2
    sget-object v6, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v0, v6

    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 628
    sget-object v6, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 631
    :cond_3
    iget-object v6, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v6, :cond_8

    .line 633
    iget-object v6, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 634
    .local v6, "allowedState":Ljava/lang/Boolean;
    if-nez v6, :cond_7

    .line 636
    iget-object v7, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 637
    if-eqz p2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 636
    :cond_4
    move-object v8, p1

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/view/View;

    .line 637
    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    move-object v1, v7

    .line 639
    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v7, v1}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    move v7, v5

    .line 640
    .local v7, "allowed":Z
    :goto_2
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-nez v7, :cond_6

    .line 642
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 644
    .end local v7    # "allowed":Z
    :cond_6
    goto :goto_3

    :cond_7
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 645
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 650
    .end local v6    # "allowedState":Ljava/lang/Boolean;
    :cond_8
    :goto_3
    iget-object v6, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v6, v6, v5

    .line 651
    .local v6, "lastContext":Ljava/lang/Object;
    iget-object v7, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v7, v7, v5

    if-nez v7, :cond_9

    .line 653
    iget-object v7, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v8, v7, v5

    .line 655
    :cond_9
    iget-object v7, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 656
    .local v7, "args":[Ljava/lang/Object;
    aput-object p3, v7, v4

    .line 658
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 659
    .local v4, "view":Landroid/view/View;
    instance-of v8, v4, Landroid/view/ViewStub;

    if-eqz v8, :cond_a

    .line 661
    move-object v8, v4

    check-cast v8, Landroid/view/ViewStub;

    .line 662
    .local v8, "viewStub":Landroid/view/ViewStub;
    aget-object v9, v7, v5

    check-cast v9, Landroid/content/Context;

    invoke-virtual {p0, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 664
    .end local v8    # "viewStub":Landroid/view/ViewStub;
    :cond_a
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v6, v8, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    nop

    .line 689
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 665
    return-object v4

    .line 689
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "lastContext":Ljava/lang/Object;
    .end local v7    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    goto/16 :goto_7

    .line 682
    :catch_0
    move-exception v4

    .line 683
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Error inflating class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    if-nez v1, :cond_b

    const-string v7, "<unknown>"

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .local v5, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v5, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 687
    throw v5

    .line 679
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v4

    .line 681
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    throw v4

    .line 673
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 675
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Class is not a View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    if-eqz p2, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_c
    move-object v7, p1

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    .restart local v5    # "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v5, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 678
    throw v5

    .line 667
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "ie":Landroid/view/InflateException;
    :catch_3
    move-exception v4

    .line 668
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Error inflating class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    if-eqz p2, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_d
    move-object v7, p1

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    .restart local v5    # "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v5, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 671
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "ie":Landroid/view/InflateException;
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "ignoreThemeAttr"    # Z

    .line 761
    const-string/jumbo v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "class"

    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 766
    :cond_0
    const/4 v0, 0x0

    if-nez p5, :cond_2

    .line 767
    sget-object v2, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 768
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 769
    .local v3, "themeResId":I
    if-eqz v3, :cond_1

    .line 770
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, p3, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p3, v4

    .line 772
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 775
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    .end local v3    # "themeResId":I
    :cond_2
    const-string v2, "blink"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 777
    new-instance v0, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v0, p3, p4}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 782
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_4

    .line 783
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 783
    .local v2, "view":Landroid/view/View;
    :goto_0
    goto :goto_1

    .line 784
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v2, :cond_5

    .line 785
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v2, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 787
    :cond_5
    move-object v2, v1

    .line 790
    .restart local v2    # "view":Landroid/view/View;
    :goto_1
    if-nez v2, :cond_6

    iget-object v3, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v3, :cond_6

    .line 791
    iget-object v3, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 794
    :cond_6
    if-nez v2, :cond_8

    .line 795
    iget-object v3, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 796
    .local v3, "lastContext":Ljava/lang/Object;
    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, v4, v0
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    const/4 v4, -0x1

    const/16 v5, 0x2e

    :try_start_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 799
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 804
    .end local v2    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    :goto_2
    move-object v2, v1

    goto :goto_3

    .line 801
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {p0, p2, v1, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 804
    :goto_3
    :try_start_2
    iget-object v1, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 805
    goto :goto_4

    .line 804
    :catchall_0
    move-exception v1

    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v0

    throw v1
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    .end local v3    # "lastContext":Ljava/lang/Object;
    :cond_8
    :goto_4
    return-object v2

    .line 818
    .end local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 821
    .local v1, "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 822
    throw v1

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    .restart local v1    # "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 816
    throw v1

    .line 809
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 810
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .locals 1

    .line 343
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 374
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 6
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 415
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 421
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 424
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-wide/16 v2, 0x8

    :try_start_0
    sget-boolean v4, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), root="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", attachToRoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 430
    :cond_0
    invoke-virtual {p0, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 434
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_1

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 430
    :cond_1
    return-object v4

    .line 432
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 434
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    throw v4
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 394
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 463
    iget-object v9, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v9

    .line 464
    :try_start_0
    const-string v0, "inflate"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 466
    iget-object v0, v7, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object v12, v0

    .line 467
    .local v12, "inflaterContext":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v13, v0

    .line 468
    .local v13, "attrs":Landroid/util/AttributeSet;
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v0, v0, v14

    check-cast v0, Landroid/content/Context;

    move-object v15, v0

    .line 469
    .local v15, "lastContext":Landroid/content/Context;
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v12, v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 470
    move-object v0, v8

    .line 470
    .local v0, "result":Landroid/view/View;
    :goto_0
    move-object/from16 v16, v0

    .line 475
    .end local v0    # "result":Landroid/view/View;
    .local v16, "result":Landroid/view/View;
    const/16 v17, 0x0

    const/4 v6, 0x1

    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v5, v0

    .line 475
    .local v5, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v5, v6, :cond_0

    .line 470
    .end local v5    # "type":I
    move-object/from16 v0, v16

    goto :goto_0

    .line 480
    .restart local v5    # "type":I
    :cond_0
    if-ne v5, v1, :cond_7

    .line 485
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "merge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 495
    if-eqz v8, :cond_1

    if-eqz p3, :cond_1

    .line 500
    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v12

    move/from16 v19, v5

    move-object v5, v13

    .line 500
    .end local v5    # "type":I
    .local v19, "type":I
    move v10, v6

    move/from16 v6, v18

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 556
    move-object/from16 v3, p1

    goto :goto_1

    .line 496
    .end local v19    # "type":I
    .restart local v5    # "type":I
    :cond_1
    move/from16 v19, v5

    move v10, v6

    .line 496
    .end local v5    # "type":I
    .restart local v19    # "type":I
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    .end local v19    # "type":I
    .restart local v5    # "type":I
    :cond_2
    move/from16 v19, v5

    move v10, v6

    .line 503
    .end local v5    # "type":I
    .restart local v19    # "type":I
    invoke-direct {v7, v8, v0, v12, v13}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, "temp":Landroid/view/View;
    const/4 v2, 0x0

    .line 507
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_3

    .line 513
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 514
    if-nez p3, :cond_3

    .line 517
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    :cond_3
    move-object/from16 v3, p1

    :try_start_3
    invoke-virtual {v7, v3, v1, v13, v10}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 534
    if-eqz v8, :cond_4

    if-eqz p3, :cond_4

    .line 535
    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 540
    :cond_4
    if-eqz v8, :cond_5

    if-nez p3, :cond_6

    .line 541
    :cond_5
    move-object/from16 v16, v1

    .line 556
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "temp":Landroid/view/View;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "type":I
    :cond_6
    :goto_1
    :try_start_4
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v15, v0, v14

    .line 557
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v17, v0, v10

    .line 559
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    nop

    .line 562
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v16

    .line 556
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 549
    :catch_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_2

    .line 545
    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_3

    .line 481
    .restart local v5    # "type":I
    :cond_7
    move-object/from16 v3, p1

    move/from16 v19, v5

    move v10, v6

    .line 481
    .end local v5    # "type":I
    .restart local v19    # "type":I
    :try_start_5
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 549
    .end local v19    # "type":I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 545
    :catch_3
    move-exception v0

    goto :goto_3

    .line 556
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    goto :goto_4

    .line 549
    :catch_4
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    .local v1, "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 553
    throw v1

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_5
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    .line 546
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    .restart local v1    # "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 548
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 556
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catchall_2
    move-exception v0

    :goto_4
    :try_start_7
    iget-object v1, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v15, v1, v14

    .line 557
    iget-object v1, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v17, v1, v10

    .line 559
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 563
    .end local v12    # "inflaterContext":Landroid/content/Context;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "lastContext":Landroid/content/Context;
    .end local v16    # "result":Landroid/view/View;
    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_5
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 731
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 714
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 850
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 852
    .local v1, "pendingRequestFocus":Z
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 852
    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 853
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_7

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_7

    .line 855
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 856
    goto :goto_0

    .line 859
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 861
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "requestFocus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 862
    const/4 v1, 0x1

    .line 863
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 864
    :cond_2
    const-string/jumbo v5, "tag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 865
    invoke-direct {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 866
    :cond_3
    const-string v5, "include"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 867
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eqz v2, :cond_4

    .line 870
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 868
    :cond_4
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<include /> cannot be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 871
    :cond_5
    const-string/jumbo v5, "merge"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 874
    invoke-direct {p0, p2, v4, p3, p4}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 875
    .local v5, "view":Landroid/view/View;
    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup;

    .line 876
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 877
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v5, p4, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 878
    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    goto :goto_0

    .line 872
    .restart local v4    # "name":Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<merge /> must be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_8

    .line 883
    invoke-virtual {p2}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 886
    :cond_8
    if-eqz p5, :cond_9

    .line 887
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 889
    :cond_9
    return-void
.end method

.method final rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 836
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 4
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .line 294
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_2

    .line 297
    if-eqz p1, :cond_1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 301
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_0

    .line 302
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 306
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 313
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_2

    .line 316
    if-eqz p1, :cond_1

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 320
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_0

    .line 321
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .line 356
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 360
    :cond_0
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 331
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_0

    .line 332
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 336
    :goto_0
    return-void
.end method
