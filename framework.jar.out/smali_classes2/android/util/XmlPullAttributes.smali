.class Landroid/util/XmlPullAttributes;
.super Ljava/lang/Object;
.source "XmlPullAttributes.java"

# interfaces
.implements Landroid/util/AttributeSet;


# instance fields
.field mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 31
    return-void
.end method


# virtual methods
.method public getAttributeBooleanValue(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .line 107
    nop

    .line 108
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 69
    nop

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .line 127
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    .line 131
    :cond_0
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    .line 97
    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 117
    nop

    .line 118
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 81
    nop

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 102
    nop

    .line 103
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 63
    nop

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0, p3, p4}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 42
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .param p1, "index"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 38
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 112
    nop

    .line 113
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 75
    nop

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 122
    nop

    .line 123
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 87
    nop

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 46
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .line 139
    const-string v0, "class"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .line 135
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .line 143
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 3

    .line 147
    const-string/jumbo v0, "style"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
