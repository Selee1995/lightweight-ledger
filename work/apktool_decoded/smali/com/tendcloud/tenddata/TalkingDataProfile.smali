.class public Lcom/tendcloud/tenddata/TalkingDataProfile;
.super Lorg/json/JSONObject;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "name"

.field private static final b:Ljava/lang/String; = "type"

.field private static final c:Ljava/lang/String; = "gender"

.field private static final d:Ljava/lang/String; = "age"

.field private static final e:Ljava/lang/String; = "property1"

.field private static final f:Ljava/lang/String; = "property2"

.field private static final g:Ljava/lang/String; = "property3"

.field private static final h:Ljava/lang/String; = "property4"

.field private static final i:Ljava/lang/String; = "property5"

.field private static final j:Ljava/lang/String; = "property6"

.field private static final k:Ljava/lang/String; = "property7"

.field private static final l:Ljava/lang/String; = "property8"

.field private static final m:Ljava/lang/String; = "property9"

.field private static final n:Ljava/lang/String; = "property10"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public static createProfile()Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 29
    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataProfile;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/TalkingDataProfile;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setAge(I)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    :try_start_0
    const-string v0, "age"

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set age error "

    .line 62
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public setGender(Lcom/tendcloud/tenddata/TalkingDataGender;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    :try_start_0
    const-string v0, "gender"

    .line 51
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataGender;->index()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set gender error "

    .line 53
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    :try_start_0
    const-string v0, "name"

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set name error "

    .line 35
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public setProperty1(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 69
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property1"

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property1 error "

    .line 73
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty10(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 168
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property10"

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property10 error "

    .line 172
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty2(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 80
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property2"

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property2 error "

    .line 84
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty3(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 91
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property3"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property3 error "

    .line 95
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty4(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 102
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property4"

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property4 error "

    .line 106
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty5(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 113
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property5"

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property5 error "

    .line 117
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty6(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 124
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property6"

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property6 error "

    .line 128
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty7(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 135
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property7"

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property7 error "

    .line 139
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty8(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 146
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property8"

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property8 error "

    .line 150
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setProperty9(Ljava/lang/Object;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    .line 157
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "property9"

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set property9 error "

    .line 161
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setType(Lcom/tendcloud/tenddata/TalkingDataProfileType;)Lcom/tendcloud/tenddata/TalkingDataProfile;
    .locals 1

    :try_start_0
    const-string v0, "type"

    .line 42
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TalkingDataProfileType;->index()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/TalkingDataProfile;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "set type error "

    .line 44
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
