.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 45
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 46
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 48
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 49
    iput-object p7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p7, :cond_1

    .line 53
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 60
    :goto_0
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    aget-object v3, p1, v1

    .line 61
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 66
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    if-eqz p7, :cond_4

    .line 70
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    const/4 p7, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge p7, p3, :cond_5

    aget-object v2, p1, p7

    .line 71
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 p7, p7, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 76
    :cond_5
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 78
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p1

    .line 79
    invoke-static {p5, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move-object p5, p1

    :goto_3
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p2, :cond_7

    .line 82
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_8

    .line 84
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_8
    :goto_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 174
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 175
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p7

    .line 199
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    and-int/lit16 v0, v12, 0x400

    const/16 v16, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_2

    :try_start_0
    new-array v1, v8, [Ljava/lang/Class;

    .line 206
    invoke-virtual {v11, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v1, v16

    :goto_0
    if-nez v1, :cond_1

    .line 212
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, v12, 0x8

    if-nez v2, :cond_1

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 214
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 215
    array-length v7, v6

    if-ne v7, v9, :cond_0

    aget-object v6, v6, v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v7, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, v16

    :goto_2
    if-eqz v13, :cond_3

    move-object/from16 v8, v16

    move-object v9, v8

    goto/16 :goto_7

    .line 231
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v11

    move-object/from16 v3, v16

    :goto_3
    if-eqz v2, :cond_a

    .line 233
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_a

    .line 234
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 235
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_9

    aget-object v9, v4, v6

    .line 236
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    and-int/lit8 v19, v8, 0x8

    if-eqz v19, :cond_5

    .line 239
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v3, :cond_4

    move-object v3, v9

    goto :goto_6

    .line 241
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    and-int/lit8 v19, v8, 0x2

    if-nez v19, :cond_7

    move-object/from16 v19, v3

    and-int/lit16 v3, v8, 0x100

    if-nez v3, :cond_8

    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_6

    goto :goto_5

    .line 253
    :cond_6
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 v19, v3

    :cond_8
    :goto_5
    move-object/from16 v3, v19

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v19, v3

    .line 233
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 257
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    .line 258
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v9, v2

    move-object v8, v3

    .line 261
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 263
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v7, :cond_f

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    move-object/from16 v19, v6

    move-object v6, v9

    :cond_e
    move-object/from16 v21, v10

    const/4 v9, 0x0

    goto/16 :goto_18

    .line 267
    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 268
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v5, :cond_10

    move-object v5, v4

    goto :goto_c

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    move-object/from16 v5, v16

    :goto_c
    const-string v4, "illegal json creator"

    if-eqz v5, :cond_19

    .line 280
    invoke-static {v11, v5, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 282
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    if-eqz p6, :cond_12

    .line 284
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v9, v0

    goto :goto_d

    :cond_12
    move-object v9, v8

    :goto_d
    const/4 v14, 0x0

    .line 287
    :goto_e
    array-length v0, v8

    if-ge v14, v0, :cond_17

    .line 288
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    aget-object v0, v0, v14

    .line 290
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 291
    instance-of v7, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v7, :cond_13

    .line 292
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_10

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_14
    move-object/from16 v3, v16

    :goto_10
    if-eqz v3, :cond_16

    .line 300
    aget-object v7, v8, v14

    .line 301
    aget-object v17, v9, v14

    .line 302
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v6, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 305
    invoke-static {v11, v2, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 308
    :cond_15
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 309
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 310
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object/from16 p2, v8

    move-object v8, v1

    move-object v1, v3

    move-object/from16 v21, v2

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v7, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v21

    move-object/from16 p5, v9

    move-object v9, v6

    move/from16 v6, v19

    move-object/from16 v19, v9

    move-object v9, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 317
    invoke-static {v15, v8, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move-object v4, v9

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v9, p5

    goto :goto_e

    :cond_16
    move-object v9, v4

    .line 297
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v17, v5

    .line 320
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 321
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 323
    new-array v6, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v1, 0x0

    .line 324
    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 327
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_11

    :cond_18
    move-object/from16 v7, v16

    .line 328
    :goto_11
    new-instance v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    return-object v8

    :cond_19
    move-object/from16 v19, v6

    move-object v6, v9

    move-object v9, v4

    if-eqz v8, :cond_21

    .line 332
    invoke-static {v11, v8, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 334
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 336
    array-length v0, v5

    if-lez v0, :cond_e

    if-eqz p6, :cond_1a

    .line 338
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v12, v0

    goto :goto_12

    :cond_1a
    move-object v12, v5

    :goto_12
    const/4 v14, 0x0

    .line 341
    :goto_13
    array-length v0, v5

    if-ge v14, v0, :cond_1e

    .line 342
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    aget-object v0, v0, v14

    .line 344
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 345
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1b

    .line 346
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_15

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1c
    move-object/from16 v3, v16

    :goto_15
    if-eqz v3, :cond_1d

    .line 354
    aget-object v4, v5, v14

    .line 355
    aget-object v6, v12, v14

    .line 356
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v19

    invoke-static {v11, v0, v7, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 357
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v19

    .line 358
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 359
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v10

    move-object v10, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v22, v5

    move-object/from16 v5, v17

    move/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 366
    invoke-static {v15, v10, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v21

    move-object/from16 v5, v22

    goto :goto_13

    .line 351
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 370
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 372
    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    .line 373
    invoke-static {v5, v9, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 376
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v6, v5

    goto :goto_16

    :cond_1f
    move-object v6, v1

    :goto_16
    if-eqz p4, :cond_20

    .line 380
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_17

    :cond_20
    move-object/from16 v7, v16

    .line 381
    :goto_17
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    return-object v9

    :cond_21
    move-object/from16 v21, v10

    const/4 v9, 0x0

    if-eqz v0, :cond_57

    :goto_18
    if-eqz v7, :cond_22

    .line 390
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_22
    const/4 v10, 0x3

    const/4 v5, 0x4

    if-nez v13, :cond_39

    .line 394
    array-length v4, v6

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_39

    aget-object v2, v6, v3

    .line 396
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_24

    :cond_23
    :goto_1a
    move/from16 v27, v3

    move/from16 v23, v4

    move-object/from16 v32, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v33, v19

    move-object/from16 v17, v21

    :goto_1b
    const/16 v21, 0x1

    goto/16 :goto_25

    .line 401
    :cond_24
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 402
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v5, :cond_25

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v1, v5, :cond_23

    .line 403
    :cond_25
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_26

    goto :goto_1a

    :cond_26
    if-eqz p5, :cond_27

    .line 409
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1c

    :cond_27
    move-object/from16 v1, v16

    :goto_1c
    if-nez v1, :cond_28

    if-eqz p5, :cond_28

    .line 412
    invoke-static {v11, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    :cond_28
    move-object/from16 v17, v1

    if-eqz v17, :cond_2b

    .line 416
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_1a

    .line 420
    :cond_29
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 421
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    .line 423
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 424
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 425
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move/from16 v27, v3

    move-object/from16 v3, v23

    move/from16 v23, v4

    move-object/from16 v4, p0

    const/16 v18, 0x1

    move-object/from16 v5, p2

    move-object/from16 v28, v6

    move/from16 v6, v20

    move-object/from16 v29, v7

    move/from16 v7, v22

    move-object/from16 v30, v8

    move-object/from16 v8, v17

    move-object/from16 v31, v19

    move-object/from16 v32, v28

    move-object/from16 v9, v24

    const/4 v14, 0x3

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v10, v26

    .line 437
    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_1e

    :cond_2a
    move-object v10, v2

    move/from16 v27, v3

    move/from16 v23, v4

    move-object/from16 v32, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v19

    const/4 v14, 0x3

    move/from16 v8, v20

    goto :goto_1d

    :cond_2b
    move-object v10, v2

    move/from16 v27, v3

    move/from16 v23, v4

    move-object/from16 v32, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v19

    const/4 v14, 0x3

    const/4 v8, 0x0

    const/16 v22, 0x0

    :goto_1d
    const-string v1, "set"

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2c
    :goto_1e
    move-object/from16 v17, v21

    move-object/from16 v33, v31

    goto/16 :goto_1b

    .line 446
    :cond_2d
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 449
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 450
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_2e

    .line 451
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v21

    move-object/from16 v6, v31

    const/4 v9, 0x4

    goto :goto_20

    .line 453
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_2f
    const/4 v9, 0x4

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_30

    .line 456
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    move-object/from16 v7, v21

    move-object/from16 v6, v31

    goto :goto_20

    :cond_30
    const/16 v2, 0x66

    if-ne v1, v2, :cond_31

    .line 458
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 459
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2c

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 460
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 465
    :goto_20
    invoke-static {v11, v0, v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_33

    .line 466
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_32

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 468
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v11, v1, v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_21

    :cond_32
    const/4 v4, 0x1

    goto :goto_21

    :cond_33
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_21
    move-object v3, v1

    if-eqz v3, :cond_37

    if-eqz p5, :cond_34

    .line 473
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v18, v1

    goto :goto_22

    :cond_34
    move-object/from16 v18, v16

    :goto_22
    if-eqz v18, :cond_37

    .line 476
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 477
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 479
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_35

    .line 480
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 481
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v2

    move-object v14, v2

    move-object v2, v10

    const/16 v21, 0x1

    move-object/from16 v4, p0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v33, v6

    move v6, v8

    move-object/from16 v24, v7

    move/from16 v7, v19

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v17, v24

    goto :goto_25

    :cond_35
    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/16 v21, 0x1

    move-object/from16 v14, p7

    move v6, v8

    if-nez v17, :cond_36

    move-object/from16 v8, v18

    goto :goto_23

    :cond_36
    move-object/from16 v8, v17

    :goto_23
    move/from16 v7, v19

    goto :goto_24

    :cond_37
    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/16 v21, 0x1

    move-object/from16 v14, p7

    move v6, v8

    move-object/from16 v8, v17

    move/from16 v7, v22

    :goto_24
    move-object/from16 v17, v24

    if-eqz v14, :cond_38

    .line 496
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_38
    move-object v1, v0

    .line 499
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object v0, v9

    move-object v2, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v34, v9

    move-object/from16 v9, v18

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v34

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 503
    invoke-static {v11, v14, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :goto_25
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v14, p7

    move-object/from16 v21, v17

    move/from16 v4, v23

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v6, v32

    move-object/from16 v19, v33

    const/4 v5, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x3

    goto/16 :goto_19

    :cond_39
    move-object/from16 v32, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v33, v19

    const/16 v21, 0x1

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v33

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    array-length v2, v1

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v2, :cond_3f

    aget-object v3, v1, v8

    .line 511
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_3a

    goto :goto_29

    :cond_3a
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3d

    .line 517
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 518
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3c

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_27

    :cond_3b
    const/4 v9, 0x0

    goto :goto_28

    :cond_3c
    :goto_27
    const/4 v9, 0x1

    :goto_28
    if-nez v9, :cond_3d

    goto :goto_29

    .line 524
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    .line 525
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 529
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_2a
    if-eqz v1, :cond_46

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_46

    .line 530
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v3, :cond_45

    aget-object v4, v2, v8

    .line 531
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_40

    goto :goto_2e

    :cond_40
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_43

    .line 537
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 538
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_42

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_2c

    :cond_41
    const/4 v9, 0x0

    goto :goto_2d

    :cond_42
    :goto_2c
    const/4 v9, 0x1

    :goto_2d
    if-nez v9, :cond_43

    goto :goto_2e

    :cond_43
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_44

    .line 545
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 529
    :cond_45
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2a

    .line 551
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Field;

    .line 552
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_30
    if-ge v8, v1, :cond_48

    .line 555
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 556
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v9, 0x1

    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_48
    if-eqz v9, :cond_49

    goto :goto_2f

    :cond_49
    if-eqz p5, :cond_4a

    .line 569
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v9, v1

    goto :goto_31

    :cond_4a
    move-object/from16 v9, v16

    :goto_31
    if-eqz v9, :cond_4c

    .line 572
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 573
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 575
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 576
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_4b
    move-object/from16 v10, p7

    move v6, v1

    move v7, v2

    goto :goto_32

    :cond_4c
    move-object/from16 v10, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_32
    if-eqz v10, :cond_4d

    .line 581
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4d
    move-object v1, v0

    .line 584
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 585
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v35, v8

    move-object/from16 v8, v17

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v35

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_2f

    :cond_4e
    if-nez v13, :cond_55

    move-object/from16 v14, v32

    .line 600
    array-length v10, v14

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v10, :cond_55

    aget-object v8, v14, v9

    .line 601
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x4

    if-ge v1, v7, :cond_4f

    goto/16 :goto_36

    :cond_4f
    const-string v1, "get"

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 607
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_50

    goto/16 :goto_36

    .line 611
    :cond_50
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 612
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_51

    const-class v2, Ljava/util/Map;

    .line 613
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    :cond_51
    if-eqz p5, :cond_52

    .line 617
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v17, v1

    goto :goto_34

    :cond_52
    move-object/from16 v17, v16

    :goto_34
    if-eqz v17, :cond_53

    .line 621
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_53

    const/4 v6, 0x3

    goto :goto_35

    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    .line 623
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 625
    :goto_35
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v4, p0

    move-object/from16 v36, v5

    move-object/from16 v5, p2

    const/16 v21, 0x3

    move/from16 v6, v18

    const/16 v18, 0x4

    move/from16 v7, v19

    move-object/from16 v37, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v20

    move/from16 v19, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v36

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, v37

    .line 629
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_37

    :cond_54
    :goto_36
    move/from16 v17, v9

    move/from16 v19, v10

    const/16 v18, 0x4

    const/16 v21, 0x3

    :goto_37
    add-int/lit8 v9, v17, 0x1

    move/from16 v10, v19

    goto/16 :goto_33

    .line 635
    :cond_55
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 636
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 638
    new-array v6, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v1, 0x0

    .line 639
    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_56

    .line 642
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_38

    :cond_56
    move-object/from16 v7, v16

    .line 643
    :goto_38
    new-instance v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v3, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    return-object v8

    .line 385
    :cond_57
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 8

    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    return-object p2

    .line 93
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 94
    array-length v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 98
    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 99
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    return-object p2

    .line 114
    :cond_5
    array-length v2, v0

    array-length p1, p1

    if-ne v2, p1, :cond_c

    const/4 p1, 0x0

    .line 116
    :goto_4
    array-length v2, v0

    if-ge p1, v2, :cond_7

    .line 117
    aget-object v2, p2, p1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_8

    return-object p2

    .line 127
    :cond_8
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    .line 128
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_b

    const/4 v3, 0x0

    .line 129
    :goto_7
    array-length v5, p2

    if-ge v3, v5, :cond_a

    .line 130
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 131
    aget-object v3, p2, v3

    aput-object v3, p1, v2

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 137
    :cond_b
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    return-object p1

    .line 141
    :cond_c
    array-length p1, p2

    new-array v2, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    .line 142
    :goto_9
    array-length v5, v0

    if-ge v3, v5, :cond_f

    const/4 v5, 0x0

    .line 143
    :goto_a
    array-length v6, p2

    if-ge v5, v6, :cond_e

    .line 144
    aget-object v6, p2, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 145
    aget-object v5, p2, v5

    aput-object v5, v2, v3

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 151
    :cond_f
    array-length v0, v0

    const/4 v3, 0x0

    .line 152
    :goto_c
    array-length v5, p2

    if-ge v3, v5, :cond_13

    const/4 v5, 0x0

    :goto_d
    if-ge v5, p1, :cond_11

    if-ge v5, v0, :cond_11

    .line 155
    aget-object v6, v2, v3

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v5, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_12

    .line 161
    aget-object v5, p2, v3

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 165
    :cond_13
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    :cond_14
    return-object p2
.end method
