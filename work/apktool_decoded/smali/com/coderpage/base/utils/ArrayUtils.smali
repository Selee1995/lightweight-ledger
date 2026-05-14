.class public Lcom/coderpage/base/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/utils/ArrayUtils$Function;,
        Lcom/coderpage/base/utils/ArrayUtils$Consumer;,
        Lcom/coderpage/base/utils/ArrayUtils$Comparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/coderpage/base/utils/ArrayUtils$Comparator<",
            "TE;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 97
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 102
    invoke-interface {p1, v2}, Lcom/coderpage/base/utils/ArrayUtils$Comparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static find(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/coderpage/base/utils/ArrayUtils$Comparator<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 152
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 158
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 159
    invoke-interface {p1, v3}, Lcom/coderpage/base/utils/ArrayUtils$Comparator;->compare(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 153
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public static findFirst(Ljava/util/Collection;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/coderpage/base/utils/ArrayUtils$Comparator<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 58
    invoke-interface {p1, v1}, Lcom/coderpage/base/utils/ArrayUtils$Comparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/coderpage/base/utils/ArrayUtils$Consumer<",
            "TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 117
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 122
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/coderpage/base/utils/ArrayUtils$Consumer;->accept(IILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static forEach([Ljava/lang/Object;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "Lcom/coderpage/base/utils/ArrayUtils$Consumer<",
            "TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 134
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    aget-object v2, p0, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/coderpage/base/utils/ArrayUtils$Consumer;->accept(IILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static join(Ljava/lang/CharSequence;Lcom/coderpage/base/utils/ArrayUtils$Function;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delimiter",
            "element2String",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/coderpage/base/utils/ArrayUtils$Function<",
            "TE;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/coderpage/base/utils/StringJoiner;

    invoke-direct {v0, p0}, Lcom/coderpage/base/utils/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 46
    invoke-interface {p1, p2}, Lcom/coderpage/base/utils/ArrayUtils$Function;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lcom/coderpage/base/utils/StringJoiner;->add(Ljava/lang/CharSequence;)Lcom/coderpage/base/utils/StringJoiner;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/coderpage/base/utils/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs join(Ljava/lang/CharSequence;Lcom/coderpage/base/utils/ArrayUtils$Function;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delimiter",
            "element2String",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/coderpage/base/utils/ArrayUtils$Function<",
            "TE;",
            "Ljava/lang/CharSequence;",
            ">;[TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/coderpage/base/utils/StringJoiner;

    invoke-direct {v0, p0}, Lcom/coderpage/base/utils/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    array-length p0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 28
    invoke-interface {p1, v2}, Lcom/coderpage/base/utils/ArrayUtils$Function;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/coderpage/base/utils/StringJoiner;->add(Ljava/lang/CharSequence;)Lcom/coderpage/base/utils/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/coderpage/base/utils/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Comparator;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/coderpage/base/utils/ArrayUtils$Comparator<",
            "TE;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 73
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 79
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-interface {p1, v2}, Lcom/coderpage/base/utils/ArrayUtils$Comparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
