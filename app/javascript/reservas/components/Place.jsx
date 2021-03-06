import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';
import CssBaseline from '@material-ui/core/CssBaseline';
import { withStyles } from '@material-ui/core/styles';

import AppBar from '@material-ui/core/AppBar';
import Button from '@material-ui/core/Button';
import StreetViewIcon from '@material-ui/icons/Streetview';
import PhoneIcon from '@material-ui/icons/Phone';
import EmailIcon from '@material-ui/icons/Email';
import CarIcon from '@material-ui/icons/LocalParking';
import Card from '@material-ui/core/Card';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Grid from '@material-ui/core/Grid';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import Menu from '@material-ui/core/Menu';

const styles = theme => ({
  icon: {
    marginRight: theme.spacing.unit * 2,
  },
  title: {
    flexGrow: 1,
  },
  heroUnit: {
    backgroundColor: theme.palette.background.paper,
  },
  heroContent: {
    maxWidth: 800,
    margin: '0 auto',
    padding: `${theme.spacing.unit * 8}px 0 ${theme.spacing.unit * 6}px`,
  },
  heroButtons: {
    textAlign:'center',
    marginTop: theme.spacing.unit * 4,
  },
  layout: {
    width: 'auto',
    marginLeft: theme.spacing.unit * 3,
    marginRight: theme.spacing.unit * 3,
    [theme.breakpoints.up(1100 + theme.spacing.unit * 3 * 2)]: {
      width: 1100,
      marginLeft: 'auto',
      marginRight: 'auto',
    },
  },
  cardGrid: {
    padding: `${theme.spacing.unit * 8}px 0`,
  },
  card: {
    height: '100%',
    display: 'flex',
    flexDirection: 'column',
  },
  cardMedia: {
    paddingTop: '56.25%', // 16:9
  },
  cardContent: {
    flexGrow: 1,
  },
  footer: {
    backgroundColor: theme.palette.background.paper,
    padding: theme.spacing.unit * 6,
  },
});

const cards = [1, 2, 3, 4, 5, 6];

class Place extends React.Component {

  render() {

    const { classes } = this.props;

    return (
      <React.Fragment>
        <CssBaseline />
        <AppBar position="static">
          <Toolbar>
            <StreetViewIcon className={classes.icon} />
            <Typography
              variant="title"
              color="inherit"
              className={classes.title}>
              Reservas App
            </Typography>
            <Button
              variant="flat"
              color="inherit"
              href="/login">
              Ingresar
            </Button>
          </Toolbar>
        </AppBar>
        <main>

          <div className={classes.heroUnit}>
            <div className={classes.heroContent}>
              <Typography
                variant="display3"
                align="center"
                color="textPrimary"
                gutterBottom>
                La 10 Indoor Soccer
              </Typography>
              <Typography
                variant="title"
                align="center"
                color="textSecondary"
                paragraph>
                Calle 108 # 17 A-30 Bogotá, Colombia
              </Typography>
              <div>
                <Grid container spacing={0}>
                  <Grid item xs={4}>
                    <ListItem>
                      <ListItemIcon>
                        <PhoneIcon />
                      </ListItemIcon>
                      <ListItemText
                        primary="(57) 310 294 2527"
                        secondary="Teléfono"
                        />
                    </ListItem>
                  </Grid>
                  <Grid item xs={4}>
                    <ListItem>
                      <ListItemIcon>
                        <EmailIcon />
                      </ListItemIcon>
                      <ListItemText
                        primary="fiestas@la10indoor.com"
                        secondary="Correo"
                        />
                    </ListItem>
                  </Grid>
                  <Grid item xs={4}>
                    <ListItem>
                      <ListItemIcon>
                        <CarIcon />
                      </ListItemIcon>
                      <ListItemText
                        primary="Si"
                        secondary="Parqueo"
                        />
                    </ListItem>
                  </Grid>
                </Grid>
              </div>
              <div className={classes.heroButtons}>
                <Button variant="outlined" color="primary">
                  Editar
                </Button>
              </div>
            </div>
          </div>
          <div className={classNames(classes.layout, classes.cardGrid)}>

            <Grid container spacing={40}>
              {cards.map(card => (
                <Grid item key={card} sm={6} md={4} lg={3}>
                  <Card className={classes.card}>
                    <CardMedia
                      className={classes.cardMedia}
                      image="http://localhost:3000/indoor-soccer.jpg"
                      // eslint-disable-line max-len
                      title="Image title"
                      />
                    <CardContent className={classes.cardContent}>
                      <Typography
                        gutterBottom
                        variant="headline"
                        component="h2">
                        Cancha {card}
                      </Typography>
                      <Typography>
                        Tamaño: 9
                      </Typography>
                      <Typography>
                        Techada: Si
                      </Typography>
                    </CardContent>
                    <CardActions>
                      <Button
                        size="small"
                        color="primary"
                        href="/field">
                        Reservar
                      </Button>
                      <Button size="small" color="primary">
                        Editar
                      </Button>
                    </CardActions>
                  </Card>
                </Grid>
              ))}
            </Grid>
          </div>
        </main>

        <footer className={classes.footer}>
          <Typography
            variant="title"
            align="center"
            gutterBottom>
            Sistema de reserva de espacios deportivos.
          </Typography>
          <Typography
            variant="subheading"
            align="center"
            color="textSecondary"
            component="p">
            Copyright (c) 2018
          </Typography>
        </footer>

      </React.Fragment>
    );
  }
}

Place.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Place);
