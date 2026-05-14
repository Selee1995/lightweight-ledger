.class public final Lcom/alibaba/android/arouter/facade/Postcard;
.super Lcom/alibaba/android/arouter/facade/model/RouteMeta;
.source "Postcard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/arouter/facade/Postcard$FlagInt;
    }
.end annotation


# instance fields
.field private enterAnim:I

.field private exitAnim:I

.field private flags:I

.field private greenChannel:Z

.field private mBundle:Landroid/os/Bundle;

.field private optionsCompat:Landroid/os/Bundle;

.field private provider:Lcom/alibaba/android/arouter/facade/template/IProvider;

.field private serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;

.field private tag:Ljava/lang/Object;

.field private timeout:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, v0}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/alibaba/android/arouter/facade/Postcard;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->flags:I

    const/16 v0, 0x12c

    .line 39
    iput v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->timeout:I

    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->setPath(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 80
    invoke-virtual {p0, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->setGroup(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    .line 81
    invoke-virtual {p0, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->setUri(Landroid/net/Uri;)Lcom/alibaba/android/arouter/facade/Postcard;

    if-nez p4, :cond_0

    .line 82
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEnterAnim()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->enterAnim:I

    return v0
.end method

.method public getExitAnim()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->exitAnim:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->flags:I

    return v0
.end method

.method public getOptionsBundle()Landroid/os/Bundle;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->optionsCompat:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProvider()Lcom/alibaba/android/arouter/facade/template/IProvider;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->provider:Lcom/alibaba/android/arouter/facade/template/IProvider;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->timeout:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public greenChannel()Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->greenChannel:Z

    return-object p0
.end method

.method public isGreenChannel()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->greenChannel:Z

    return v0
.end method

.method public navigation()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigation(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 2

    .line 149
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public navigation(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/app/Activity;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V

    return-void
.end method

.method public navigation(Landroid/app/Activity;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)V
    .locals 1

    .line 169
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    return-void
.end method

.method public setProvider(Lcom/alibaba/android/arouter/facade/template/IProvider;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->provider:Lcom/alibaba/android/arouter/facade/template/IProvider;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTimeout(I)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 113
    iput p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->timeout:I

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Postcard{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->provider:Lcom/alibaba/android/arouter/facade/template/IProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", greenChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->greenChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", optionsCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->optionsCompat:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->enterAnim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exitAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->exitAnim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-super {p0}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Landroid/os/Bundle;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    if-eqz p1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public withBoolean(Ljava/lang/String;Z)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public withByte(Ljava/lang/String;B)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public withByteArray(Ljava/lang/String;[B)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public withChar(Ljava/lang/String;C)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public withCharArray(Ljava/lang/String;[C)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public withCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public withCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public withCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/Postcard;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withDouble(Ljava/lang/String;D)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public withFlags(I)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 227
    iput p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->flags:I

    return-object p0
.end method

.method public withFloat(Ljava/lang/String;F)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public withFloatArray(Ljava/lang/String;[F)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/Postcard;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withLong(Ljava/lang/String;J)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public withObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 2

    .line 243
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->navigation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    iput-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, p2}, Lcom/alibaba/android/arouter/facade/service/SerializationService;->object2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withOptionsCompat(Landroid/support/v4/app/ActivityOptionsCompat;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->optionsCompat:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public withParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public withParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/Postcard;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public withShort(Ljava/lang/String;S)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public withShortArray(Ljava/lang/String;[S)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public withSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/Postcard;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object p0
.end method

.method public withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/Postcard;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/Postcard;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public withTransition(II)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 0

    .line 573
    iput p1, p0, Lcom/alibaba/android/arouter/facade/Postcard;->enterAnim:I

    .line 574
    iput p2, p0, Lcom/alibaba/android/arouter/facade/Postcard;->exitAnim:I

    return-object p0
.end method
