.class public Lcom/coderpage/base/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static LOGGING_ENABLED:Z = true

.field private static final LOG_PREFIX:Ljava/lang/String; = "M_"

.field private static final LOG_PREFIX_LENGTH:I = 0x2

.field private static final MAX_LOG_TAG_LENGTH:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 32
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "cause"
        }
    .end annotation

    .line 40
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 41
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 88
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "cause"
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 64
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "cause"
        }
    .end annotation

    .line 70
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 48
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "cause"
        }
    .end annotation

    .line 56
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 76
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "cause"
        }
    .end annotation

    .line 82
    sget-boolean v0, Lcom/coderpage/base/utils/LogUtils;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/coderpage/base/utils/LogUtils;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v2, v1, 0x17

    const-string v3, "M_"

    if-le v0, v2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x17

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
