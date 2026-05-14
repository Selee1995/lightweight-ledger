.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    .line 25
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 47
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 50
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 52
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 53
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 55
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 57
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p5, :cond_0

    .line 61
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    and-int/lit8 p4, p3, 0x1

    const/4 p4, 0x1

    .line 62
    iput-boolean p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 63
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_0

    .line 65
    :cond_0
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 66
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 68
    :goto_0
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const-wide/32 p3, -0x7ee3623b

    .line 71
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    if-ge p7, p5, :cond_1

    .line 72
    invoke-virtual {p1, p7}, Ljava/lang/String;->charAt(I)C

    move-result p5

    int-to-long p5, p5

    xor-long/2addr p3, p5

    const-wide/32 p5, 0x1000193

    mul-long p3, p3, p5

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iput-wide p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 78
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    .line 25
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 91
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 93
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 94
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 95
    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 96
    iput-object p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p6

    const/4 p8, 0x0

    if-eqz p6, :cond_1

    .line 101
    invoke-interface {p6}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object p6

    .line 103
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p9

    if-nez p9, :cond_0

    goto :goto_0

    :cond_0
    move-object p8, p6

    .line 107
    :cond_1
    :goto_0
    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    const/4 p6, 0x1

    if-eqz p3, :cond_5

    .line 110
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p8

    if-eqz p2, :cond_3

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_2

    .line 111
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p9

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne p9, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p9, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p9, 0x1

    :goto_2
    iput-boolean p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    and-int/lit16 p8, p8, 0x80

    if-eqz p8, :cond_4

    const/4 p8, 0x1

    goto :goto_3

    :cond_4
    const/4 p8, 0x0

    .line 112
    :goto_3
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_4

    .line 114
    :cond_5
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 115
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_4
    const-wide/32 p8, -0x7ee3623b

    const/4 v0, 0x0

    .line 119
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v1, v1

    xor-long/2addr p8, v1

    const-wide/32 v1, 0x1000193

    mul-long p8, p8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 124
    :cond_6
    iput-wide p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    if-eqz p2, :cond_c

    .line 129
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 130
    array-length p3, p1

    if-ne p3, p6, :cond_9

    .line 131
    aget-object p1, p1, p7

    .line 132
    const-class p3, Ljava/lang/Class;

    if-eq p1, p3, :cond_8

    const-class p3, Ljava/lang/String;

    if-eq p1, p3, :cond_8

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    if-eqz p10, :cond_8

    .line 137
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p3

    aget-object p3, p3, p7

    goto :goto_7

    :cond_8
    :goto_6
    move-object p3, p1

    .line 139
    :goto_7
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto :goto_9

    .line 141
    :cond_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 142
    const-class p3, Ljava/lang/Class;

    if-ne p1, p3, :cond_b

    :cond_a
    move-object p3, p1

    goto :goto_8

    :cond_b
    if-eqz p10, :cond_a

    .line 145
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 147
    :goto_8
    iput-boolean p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 149
    :goto_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_c

    .line 151
    :cond_c
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_e

    const-class p2, Ljava/lang/String;

    if-eq p1, p2, :cond_e

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_a

    :cond_d
    if-eqz p10, :cond_e

    .line 157
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_b

    :cond_e
    :goto_a
    move-object p2, p1

    .line 160
    :goto_b
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p8

    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 161
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    move-object p3, p2

    :goto_c
    if-eqz p4, :cond_f

    .line 164
    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_f

    instance-of p2, p3, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_f

    .line 168
    move-object p2, p3

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 169
    invoke-static {p4, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 171
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 172
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void

    .line 181
    :cond_f
    instance-of p2, p3, Ljava/lang/Class;

    if-nez p2, :cond_13

    if-eqz p5, :cond_10

    goto :goto_d

    :cond_10
    move-object p5, p4

    .line 182
    :goto_d
    invoke-static {p4, p5, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eq p2, p3, :cond_12

    .line 184
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_11

    .line 185
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_e

    .line 186
    :cond_11
    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_12

    .line 187
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    :cond_12
    :goto_e
    move-object p3, p2

    .line 192
    :cond_13
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 193
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p7, 0x1

    :cond_14
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 203
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 204
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 205
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 206
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_1

    .line 208
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    .line 215
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    .line 219
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 220
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 221
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 222
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    const/4 v4, 0x0

    .line 224
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 225
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v4

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 233
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 235
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 241
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 242
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 243
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    .line 244
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_7

    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    :cond_7
    move-object p0, v4

    move-object p1, p0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 249
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_b

    if-eqz p1, :cond_b

    .line 250
    aget-object v6, v2, v3

    .line 251
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_a

    .line 252
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    const/4 v7, 0x0

    .line 254
    :goto_3
    array-length v8, p0

    if-ge v7, v8, :cond_a

    .line 255
    aget-object v8, p0, v7

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    .line 257
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 259
    :cond_8
    aget-object v5, v4, v7

    aput-object v5, v2, v3

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    .line 266
    new-instance p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 267
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_c
    :goto_4
    return-object p2
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 277
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 279
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 283
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_5

    .line 284
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 285
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_1

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_5

    .line 288
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    .line 289
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 290
    :goto_3
    array-length v2, p0

    if-ge v5, v2, :cond_4

    .line 291
    aget-object v2, p0, v5

    if-ne v2, p1, :cond_3

    aget-object p0, v0, v5

    return-object p0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    return-object v1

    .line 296
    :cond_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    move-object p0, v2

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2

    .line 306
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    return-object v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 343
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
