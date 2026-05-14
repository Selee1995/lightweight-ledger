.class Lcom/tendcloud/tenddata/cp$b;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final mFolderPath:Ljava/lang/String;

.field private final mOperation:Lcom/tendcloud/tenddata/co;

.field final synthetic this$0:Lcom/tendcloud/tenddata/cp;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/a;Ljava/lang/String;)V
    .locals 1

    .line 546
    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$b;->this$0:Lcom/tendcloud/tenddata/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 551
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/a;->getDataFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$b;->mFolderPath:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/tendcloud/tenddata/cp$b;->mOperation:Lcom/tendcloud/tenddata/co;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/a;Ljava/lang/String;Lcom/tendcloud/tenddata/cp$1;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tendcloud/tenddata/cp$b;-><init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 559
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/cp$b;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tendcloud/tenddata/cp$b;->mOperation:Lcom/tendcloud/tenddata/co;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/co;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
