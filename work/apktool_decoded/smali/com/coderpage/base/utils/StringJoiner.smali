.class public Lcom/coderpage/base/utils/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delimiter"
        }
    .end annotation

    const-string v0, ""

    .line 48
    invoke-direct {p0, p1, v0, v0}, Lcom/coderpage/base/utils/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delimiter",
            "prefix",
            "suffix"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coderpage/base/utils/StringJoiner;->prefix:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/utils/StringJoiner;->delimiter:Ljava/lang/String;

    .line 71
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/utils/StringJoiner;->suffix:Ljava/lang/String;

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/base/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-void
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/coderpage/base/utils/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coderpage/base/utils/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lcom/coderpage/base/utils/StringJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newElement"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/coderpage/base/utils/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public length()I
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coderpage/base/utils/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public merge(Lcom/coderpage/base/utils/StringJoiner;)Lcom/coderpage/base/utils/StringJoiner;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    iget-object v0, p1, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 158
    invoke-direct {p0}, Lcom/coderpage/base/utils/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget-object v2, p1, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/coderpage/base/utils/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Lcom/coderpage/base/utils/StringJoiner;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyValue"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/coderpage/base/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->suffix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coderpage/base/utils/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/coderpage/base/utils/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1
.end method
